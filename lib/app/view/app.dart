import 'dart:ui';

import 'package:async/async.dart';
import 'package:bdaya_shared_value/bdaya_shared_value.dart';
import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/l10n/l10n.dart';
import 'package:social_media/src/pages/on_boarding/view.dart';
import 'package:social_media/src/services/init_service.dart';
import 'package:social_media/src/services/routing_service.dart';
import 'package:social_media/src/utils/theme/theme.dart';

final memoizer = AsyncMemoizer<void>();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ReactiveFormConfig(
      validationMessages: {
        'startWithA': (error) => 'Value should not start with A $error',
      },
      child: SharedValue.wrapApp(
        MaterialApp.router(
          title: 'Poke Social Media App',
          // -- Light & Dark Theme
          theme: PokeTheme.lightTheme,
          darkTheme: PokeTheme.darkTheme,
          scrollBehavior: const MaterialScrollBehavior().copyWith(
            dragDevices: {...PointerDeviceKind.values},
          ),
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          debugShowCheckedModeBanner: false,
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
                return OnBoardingView.hooked();
              },
            );
          },
        ),
      ),
    );
  }
}
