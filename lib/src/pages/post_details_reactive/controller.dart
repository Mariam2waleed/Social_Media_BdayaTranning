import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/src/router.dart';
// import 'package:reactive_forms/reactive_forms.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:social_media/gen/bdaya/social_training_local/v1/forms.pb.dart';
import 'package:social_media/gen/google/protobuf/wrappers.pb.dart';
import 'package:social_media/src/pages/post_details_reactive/form.dart';
import 'package:social_media/src/services/posts_service.dart';
import 'package:social_media/src/services/routing_service.dart';
import 'package:uuid/uuid.dart';

@lazySingleton
class PostDetailsReactiveController extends BdayaCombinedRouteController {
  PostDetailsReactiveController(this.postsService, this.routingService);
  final RoutingService routingService;
  final PostsService postsService;

  // final formGroup = FormGroup({
  //   textFcName: FormControl<String>(),
  //   // 'asdas': FormGroup({}),
  //   addressesFCName: FormArray<Map<String, Object?>>([
  //     FormGroup({}),
  //   ]),
  // });

  @override
  GoRouter get goRouter => routingService.router;

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    final id = route.pathParameters[kPostId];
    idRx.$ = id;
  }

  final idRx = SharedValue<String?>(value: null);
  final detailsRx = SharedValue<PostDetailsDto?>(value: null);
  final initialModelRx = SharedValue<PostDetailsReactiveModel>(
    value: const PostDetailsReactiveModel(),
  );
  final formVersionRx = SharedValue(value: 0);
  final formGroupRx = SharedValue<PostDetailsReactiveModelForm?>(value: null);

  void assignFormToDetails(PostDetailsDto? details) {
    initialModelRx.$ = PostDetailsReactiveModel(
      name: details?.hasName() ?? false ? details!.name.value : null,
      addresses: details == null
          ? []
          : details.addresses
              .map(
                (e) => Address(
                  id: e.id,
                  line1: e.hasLine1() ? e.line1.value : null,
                  line2: e.hasLine2() ? e.line2.value : null,
                  postalCode: e.hasPostalCode() ? e.postalCode.value : null,
                ),
              )
              .toList(),
    );
    formVersionRx.$++;
  }

  // Stream
  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);
    registerStream(
      idRx.streamWithInitial.switchMap((id) {
        if (id == null) {
          // create
          return Stream.value(null);
        }
        return postsService.getPostById(id).asStream();
      }).listen((details) {
        detailsRx.$ = details;
      }),
    );
    registerStream(
      detailsRx.streamWithInitial.listen(assignFormToDetails),
    );
  }

  void addNewAddress(PostDetailsReactiveModelForm formModel) {
    formModel.addAddressesItem(
      Address(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        line1: '',
        line2: '',
        postalCode: '',
      ),
    );
  }

  void submit(PostDetailsReactiveModelForm formGroup) {
    final model = formGroup.model;
    final mapped = PostDetailsDto(
      id: idRx.$ ?? const Uuid().v4(),
      name: model.name == null ? null : StringValue(value: model.name),
      addresses: model.addresses.map(
        (e) => AddressDto(
          id: e.id,
          line1: e.line1 == null ? null : StringValue(value: e.line1),
          line2: e.line2 == null ? null : StringValue(value: e.line2),
          postalCode:
              e.postalCode == null ? null : StringValue(value: e.postalCode),
        ),
      ),
    );
    logger.info(mapped.toProto3Json());
    
  }

  void reset(PostDetailsReactiveModelForm formGroup) {
    assignFormToDetails(detailsRx.$);
  }
}
