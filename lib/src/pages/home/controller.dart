// import 'dart:convert';

import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
import 'package:social_media/gen/bdaya/social_training/v1/common.pb.dart';
import 'package:social_media/gen/bdaya/social_training/v1/post.pb.dart';
import 'package:social_media/gen/bdaya/social_training/v1/service.pb.dart';
// import 'package:social_media/gen/bdaya/social_training_local/v1/category.pb.dart';
// import 'package:social_media/services/cache_service.dart';
import 'package:social_media/src/services/categories_service.dart';
import 'package:social_media/src/services/grpc_service.dart';
// import 'package:social_media/services/routing_service.dart';

@lazySingleton
class HomeController extends BdayaCombinedController {
  HomeController(this.grpcService, this.categoriesService);

  final GrpcService grpcService;
  final CategoriesService categoriesService;

  Future<void> getPosts() async {
    final resp = await grpcService.postApi.listPosts(
      ListPostsRequest(
        filter: ListPostsFilter(
          reviewStatus: PostReviewStatus.POST_REVIEW_STATUS_ACCEPTED,
        ),
        pagination: InfiniteScrollPaginationInfo(),
      ),
    );

    resp.posts[0].content;
  }

  // void navigateToPost(BuildContext context) {
    // final router = GoRouter.of(context);
    // url:
    // https://abcd.com/folrder/file?q1=asdad&q2=4189#asdasd

    // router.goNamed(
    //   AppRouteNames.postDetails,
    //   pathParameters: {kPostId: '1234'},
    // );

    //  ,path  ,extra   ,queryParameters
    // queryParameters: {'qi': 'asdad', 'q2': '4189'});
  // }
}
