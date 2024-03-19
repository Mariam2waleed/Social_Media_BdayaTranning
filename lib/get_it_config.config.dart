// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'src/pages/auth/controller.dart' as _i3;
import 'src/pages/home/controller.dart' as _i12;
import 'src/pages/on_boarding/controller.dart' as _i7;
import 'src/pages/post_details/controller.dart' as _i14;
import 'src/pages/post_details_reactive/controller.dart' as _i15;
import 'src/pages/posts/controller.dart' as _i8;
import 'src/services/cache_service.dart' as _i4;
import 'src/services/categories_service.dart' as _i11;
import 'src/services/grpc_service.dart' as _i5;
import 'src/services/init_service.dart' as _i6;
import 'src/services/posts_service.dart' as _i9;
import 'src/services/routing_service.dart' as _i13;
import 'src/services/user_service.dart' as _i10;

const String _prod = 'prod';
const String _fake = 'fake';

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.AuthController>(() => _i3.AuthController());
    gh.lazySingleton<_i4.CacheServiceBase>(
      () => _i4.RealCacheServiceBase(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i4.CacheServiceBase>(
      () => _i4.MockCacheServiceBase(),
      registerFor: {_fake},
    );
    gh.lazySingleton<_i5.GrpcService>(() => _i5.GrpcService());
    gh.lazySingleton<_i6.InitService>(() => _i6.InitService());
    gh.lazySingleton<_i7.OnBoardingController>(
        () => _i7.OnBoardingController());
    gh.lazySingleton<_i8.PostsController>(() => _i8.PostsController());
    gh.lazySingleton<_i9.PostsService>(() => _i9.PostsService());
    gh.lazySingleton<_i10.UserService>(
      () => _i10.FakeUserService(),
      registerFor: {_fake},
    );
    gh.lazySingleton<_i10.UserService>(
      () => _i10.RealUserService(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i11.CategoriesService>(() => _i11.CategoriesService(
          gh<_i4.CacheServiceBase>(),
          gh<_i5.GrpcService>(),
        ));
    gh.lazySingleton<_i12.HomeController>(() => _i12.HomeController(
          gh<_i5.GrpcService>(),
          gh<_i11.CategoriesService>(),
        ));
    gh.lazySingleton<_i13.RoutingService>(
        () => _i13.RoutingService(gh<_i10.UserService>()));
    gh.lazySingleton<_i14.PostDetailsController>(
        () => _i14.PostDetailsController(gh<_i13.RoutingService>()));
    gh.lazySingleton<_i15.PostDetailsReactiveController>(
        () => _i15.PostDetailsReactiveController(
              gh<_i9.PostsService>(),
              gh<_i13.RoutingService>(),
            ));
    return this;
  }
}
