import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:social_media/services/grpc_service.dart';
import 'package:social_media/services/routing_service.dart';

@lazySingleton
class HomeController extends BdayaCombinedController {
  HomeController(
      // this.grpcService
      );

  // final GrpcService grpcService;
// Future<void> getPosts() async {
  // final resp = await grpcService.postApi.listPosts(ListPostsRequest(

  // ))
// }

  void navigateToPost(BuildContext context) {
    final router = GoRouter.of(context);

    // url:
    // https://abcd.com/folrder/file?q1=asdad&q2=4189#asdasd

    router.goNamed(AppRouteNames.postDetails, pathParameters: {'id': '1234'});

    //  ,path  ,extra   ,queryParameters
    // queryParameters: {'qi': 'asdad', 'q2': '4189'});
  }
}
