import 'dart:async';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/src/router.dart';
import 'package:social_media/gen/bdaya/social_training_local/v1/forms.pb.dart';
import 'package:social_media/src/pages/post_details/view.dart';
import 'package:social_media/src/services/routing_service.dart';

@lazySingleton
class PostDetailsController extends BdayaCombinedRouteController {
  PostDetailsController(this.routingService) {
    //show a loading indicator as soon as the page loads, optional.
    defaultArea.startLoading();
  }

  final RoutingService routingService;
  @override
  // TODO: implement goRouter
  GoRouter get goRouter => routingService.router;
  //Add more route-dependant information here
  final idRx = SharedValue<String?>(value: null);

  final _refreshSignal = StreamController<DateTime>.broadcast();
  //call this to refresh the details from the database
  void refreshDetails() {
    _refreshSignal.add(DateTime.now());
  }

  final detailsRx = SharedValue<PostDetailsDto?>(value: null);
  final queryParamsRx = SharedValue<Map<String, String>>(value: {});

  @override
  bool get callOnRouteChangedInitially => true;

  final formKey = GlobalKey<FormState>();

  String? savedTextValue;
  // Address? savedAddress;

  // final addressCount = SharedValue(value: 0);
  final addresses = SharedValue(value: <Address>[]);

  void addNewAddress() {
    addresses.update((list) {
      list.add(
        Address(
          id: DateTime.now().microsecondsSinceEpoch.toString(),
          line1: TextEditingValue.empty,
          line2: TextEditingValue.empty,
          postalcode: TextEditingValue.empty,
        ),
      );
      return list;
    });
  }

  void reset() {
    final formState = formKey.currentState;
    if (formState == null) {
      return;
    }
    formState.reset();
  }

  void submit() {
    final formState = formKey.currentState;
    if (formState == null) {
      return;
    }
    // formState.validate();
    final validationResult = formState.validate();
    if (!validationResult) {
      logger.warning('Form is not validated');
      return;
    }
    formState.save();
    logger
      ..info('savedTextValue: $savedTextValue')
      ..info('addresses: ${addresses.$}');
  }

  @override
  void onRouteInformationChanged(GoRouterRouteMatch route) {
    //this gets called for route changes to current (or child) routes
    queryParamsRx.$ = route.uri.queryParameters;
    //TODO: correct path parameters
    idRx.$ = route.pathParameters['id'];
  }

  Future<PostDetailsDto?> initFromId(String id) async {
    //TODO: fetch from database, api, etc...
    //no need to try/catch here, since we are handling it in the stream below
    return PostDetailsDto();
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);

    // Register a stream to fetch data from the database
    //based on changes to the id

    registerStream(
      Rx.combineLatest2(
        _refreshSignal.stream.startWith(DateTime.now()),
        idRx.streamWithInitial.distinct(),
        (timestamp, idValue) => idValue, //We only care about the id
      ).switchMap((value) {
        if (value == null) {
          return Stream.value(null);
        }
        return initFromId(value).asStream().wrapWithArea(
              defaultArea,
              logger,
              'An error occured while fetching data',
            );
      }).listen((event) {
        detailsRx.$ = event;
      } /*, onError: (error, stacktrace) {
        //do some error logic, like showing a snackbar, just make sure context.mounted is true        
        //NOTE: it's recommended to not do anything here, and do error viewing logic in the view instead
      }*/
          ),
    );
  }
}
