import 'dart:async';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/src/router.dart';
import 'package:social_media/services/routing_service.dart';

//TODO: DELETE ME!
class PostDetailsDto {

}

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
    return null;
  }

  @override
  void beforeRender(BuildContext context) {
    super.beforeRender(context);

    // Register a stream to fetch data from the database based on changes to the id    
    
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
              "An error occured while fetching data",
            );
      }).listen((event) {        
        detailsRx.$ = event;
      }/*, onError: (error, stacktrace) {
        //do some error logic, like showing a snackbar, just make sure context.mounted is true        
        //NOTE: it's recommended to not do anything here, and do error viewing logic in the view instead
      }*/),
    );
  }
}
