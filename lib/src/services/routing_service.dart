import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/src/pages/auth/view.dart';
import 'package:social_media/src/pages/home/view.dart';
import 'package:social_media/src/pages/post_details_reactive/view.dart';
import 'package:social_media/src/pages/posts/view.dart';
import 'package:social_media/src/services/user_service.dart';

const kPostId = 'postId';

class AppRouteNames {
  static const auth = 'auth';
  static const home = 'home';
  static const posts = 'posts';
  static const postDetails = 'post-details';
  static const postComments = 'post-comments';
  static const createPost = 'create-post';
  static const postLikes = 'post-likes';
  static const postShares = 'post-share';
}

@lazySingleton
class RoutingService {
  RoutingService(this.userService);

  final UserService userService;
  late final router = GoRouter(
    routes: [
      // ShellRoute(routes: routes)
      // GoRouter(routes: routes)
      ShellRoute(
        builder: (context, state, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text('Demo Social Media'),
              actions: [
                IconButton(
                  onPressed: () => getIt<UserService>().logout(),
                  icon: const Icon(Icons.logout),
                ),
              ],
            ),
            body: child,
          );
        },
        routes: [
          GoRoute(
            path: '/',
            name: AppRouteNames.home,
            builder: (context, state) => HomeView.hooked(),
          ),
          GoRoute(
            path: '/auth',
            name: AppRouteNames.auth,
            builder: (context, state) => AuthView.hooked(),
            redirect: (context, state) {
              if (userService.currentUserIdRx.of(context) != null) {
                final oldRoute = state.uri.queryParameters['old_route'] ?? '/';
                return oldRoute;
              }
              return null;
            },
          ),
          GoRoute(
            path: '/posts',
            name: AppRouteNames.posts,
            builder: (context, state) => PostsView.hooked(),
            redirect: (context, state) {
              //put route permissions
              if (userService.currentUserIdRx.of(context) == null) {
                return state.namedLocation(
                  AppRouteNames.auth,
                  queryParameters: {'old_route': state.uri.toString()},
                );
              }
              return null;
            },
            routes: [
              GoRoute(
                path: ':$kPostId',
                name: AppRouteNames.postDetails,
                builder: (context, state) => PostDetailsReactiveView.hooked(),
                redirect: (context, state) {
                  return null;
                  //put route permissions for auth
                  /////////put route permissions for specific post
                },
                routes: [
                  //  /posts/{id}/comments
                  GoRoute(
                    path: 'comments',
                    name: AppRouteNames.postComments,
                    builder: (context, state) => const SizedBox.shrink(),
                    redirect: (context, state) {
                      return null;
                      //put route permissions
                    },
                  ),
                  //  /posts/{id}/likes
                  GoRoute(
                    path: 'likes',
                    name: AppRouteNames.postLikes,
                    builder: (context, state) => const SizedBox.shrink(),
                    redirect: (context, state) {
                      return null;
                      //put route permissions
                    },
                  ),
                  //  /posts/{id}/shares
                  GoRoute(
                    path: 'shares',
                    name: AppRouteNames.postShares,
                    builder: (context, state) => const SizedBox.shrink(),
                    redirect: (context, state) {
                      return null;
                      //put route permissions
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'new',
                name: AppRouteNames.createPost,
                builder: (context, state) => PostDetailsReactiveView.hooked(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
