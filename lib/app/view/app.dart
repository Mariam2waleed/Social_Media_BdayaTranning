import 'dart:ui';

import 'package:async/async.dart';
import 'package:bdaya_shared_value/bdaya_shared_value.dart';
import 'package:flutter/material.dart';
import 'package:social_media/app/view/splash.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/l10n/l10n.dart';
import 'package:social_media/services/init_service.dart';
import 'package:social_media/services/routing_service.dart';
// import 'package:social_media/services/user_service.dart';
// import 'package:social_media/test_widget/controller.dart';

final memoizer = AsyncMemoizer<void>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SharedValue.wrapApp(
      MaterialApp.router(
        theme: ThemeData(
          appBarTheme: AppBarTheme(
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          useMaterial3: true,
        ),
        scrollBehavior: MaterialScrollBehavior().copyWith(dragDevices: {...PointerDeviceKind.values}),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: getIt<RoutingService>().router,
        builder: (context, child) {
          return FutureBuilder(
            future: getIt<InitService>().init(),
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return ErrorWidget(snapshot.error!);
              }
              if (snapshot.connectionState == ConnectionState.done) {
                return child!;
              }
              return const SplashScreen();
            },
          );
        },
      ),
    );
  }
}
