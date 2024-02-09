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
import 'pages/home/controller.dart' as _i4;
import 'pages/post_details/controller.dart' as _i9;
import 'pages/posts/controller.dart' as _i6;
import 'services/init_service.dart' as _i5;
import 'services/routing_service.dart' as _i8;
import 'services/user_service.dart' as _i7;

const String _fake = 'fake';
const String _prod = 'prod';

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
    gh.lazySingleton<_i4.HomeController>(() => _i4.HomeController());
    gh.lazySingleton<_i5.InitService>(() => _i5.InitService());
    gh.lazySingleton<_i6.PostsController>(() => _i6.PostsController());
    gh.lazySingleton<_i7.UserService>(
      () => _i7.FakeUserService(),
      registerFor: {_fake},
    );
    gh.lazySingleton<_i7.UserService>(
      () => _i7.RealUserService(),
      registerFor: {_prod},
    );
    gh.lazySingleton<_i8.RoutingService>(
        () => _i8.RoutingService(gh<_i7.UserService>()));
    gh.lazySingleton<_i9.PostDetailsController>(
        () => _i9.PostDetailsController(gh<_i8.RoutingService>()));
    return this;
  }
}
