// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'pages/auth/controller.dart' as _i3;
import 'pages/home/controller.dart' as _i10;
import 'pages/post_details/controller.dart' as _i12;
import 'pages/posts/controller.dart' as _i7;
import 'services/cache_service.dart' as _i4;
import 'services/categories_service.dart' as _i9;
import 'services/grpc_service.dart' as _i5;
import 'services/init_service.dart' as _i6;
import 'services/routing_service.dart' as _i11;
import 'services/user_service.dart' as _i8;

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
    gh.lazySingleton<_i7.PostsController>(() => _i7.PostsController());
    gh.lazySingleton<_i8.UserService>(
      () => _i8.FakeUserService(),
      registerFor: {_fake},
    );
    gh.lazySingleton<_i8.UserService>(
      () => _i8.RealUserService(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i9.CategoriesService>(() => _i9.CategoriesService(
          gh<_i4.CacheServiceBase>(),
          gh<_i5.GrpcService>(),
        ));
    gh.lazySingleton<_i10.HomeController>(() => _i10.HomeController(
          gh<_i5.GrpcService>(),
          gh<_i9.CategoriesService>(),
        ));
    gh.lazySingleton<_i11.RoutingService>(
        () => _i11.RoutingService(gh<_i8.UserService>()));
    gh.lazySingleton<_i12.PostDetailsController>(
        () => _i12.PostDetailsController(gh<_i11.RoutingService>()));
    return this;
  }
}
