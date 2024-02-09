import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media/pages/home/controller.dart';

class HomeView extends StatelessWidget {
  const HomeView({
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
      builder: (context) => HomeView(
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

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          const Text('Category'),
          Column(
            children: List.generate(20, (index) {
              return ListTile(
                title: Text(index.toString()),
              );
            }),
          ),
          const Text('Skintype'),
          Column(
            children: List.generate(20, (index) {
              return ListTile(
                title: Text(index.toString()),
              );
            }),
          ),
          const Text('Featured products'),
          Column(
            children: List.generate(20, (index) {
              return ListTile(
                title: Text(index.toString()),
              );
            }),
          ),
        ],
      ),
    );
  }
}
