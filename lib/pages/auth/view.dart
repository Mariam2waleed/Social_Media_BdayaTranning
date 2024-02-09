import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/services/user_service.dart';
import 'controller.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    super.key,
    required this.controller,
  });

  static Widget hooked({
    BdayaGetItHookMode hookMode = BdayaGetItHookMode.lazySingleton,
    String? instanceName,
    Object? param1,
    Object? param2,
    List<Object?>? keys,
  }) {
    return HookBuilder(
      builder: (context) => AuthView(
        controller: useBdayaViewController(
          hookMode: hookMode,
          instanceName: instanceName,
          keys: keys,
          param1: param1,
          param2: param2,
        ),
      ),
    );
  }

  final AuthController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('auth page'),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Login'),
        onPressed: () {
          getIt<UserService>().currentUser.$ = 'Mariam';
        },
      ),
    );
  }
}
