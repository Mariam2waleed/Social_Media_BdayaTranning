import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/src/pages/auth/controller.dart';
import 'package:social_media/src/services/user_service.dart';

class AuthView extends StatelessWidget {
  const AuthView({
    required this.controller,
    super.key,
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
      body: const Text('auth page'),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Login'),
        onPressed: () {
          getIt<UserService>().login();
        },
      ),
    );
  }
}
