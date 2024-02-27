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
    // Slivers
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(),
          const SliverToBoxAdapter(
            child: Text('Categories'),
          ),
          Builder(
            builder: (context) {
              final categories =
                  controller.categoriesService.categoriesListRx.of(context);
              return SliverToBoxAdapter(
                child: SizedBox(
                  height: 200,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: categories
                        .map(
                          (e) => Column(
                            key: Key(e.id),
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Image.network(e.imageUrl),
                              Text(e.name),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
            },
          ),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              controller.logger.info('Rendering category $index');
              return ListTile(
                title: Text('Category: $index'),
              );
            },
          ),
          SliverToBoxAdapter(child: Text('Skin Type')),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              controller.logger.info('Rendering Skin Type $index');
              return ListTile(
                title: Text('Skin Type: $index'),
              );
            },
          ),
          SliverToBoxAdapter(child: Text('Featued products')),
          SliverList.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              controller.logger.info('Rendering Featued products $index');
              return ListTile(
                title: Text('Featued products: $index'),
              );
            },
          ),
        ],
      ),
    );
  }
}
