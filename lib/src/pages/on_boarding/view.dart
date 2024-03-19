import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/material.dart';
import 'package:social_media/src/pages/on_boarding/controller.dart';
import 'package:social_media/src/pages/on_boarding/onboarding_widgets.dart';
import 'package:social_media/src/utils/const.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({
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
      builder: (context) => OnBoardingView(
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

  final OnBoardingController controller;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          body: Stack(
            children: [
              // -- 3 Horizontal Scrollable Pages
              PageView(
                controller: controller.pageController,
                onPageChanged: controller.updatePageIndicator,
                children: const [
                  OnBoardingPage(
                    image: onBoardingImage,
                    title: onBoardingTitle1,
                    subTitle: onBoardingSubTitle1,
                  ),
                  OnBoardingPage(
                    image: onBoardingImage,
                    title: onBoardingTitle2,
                    subTitle: onBoardingSubTitle2,
                  ),
                  OnBoardingPage(
                    image: onBoardingImage,
                    title: onBoardingTitle3,
                    subTitle: onBoardingSubTitle3,
                  ),
                ],
              ),

              // Skip Button
              const OnBoardingSkip(),

              // Dot Navigation SmoothPageIndicator
              const OnBoardingDotNavigation(),

              // Circular Button
              const OnBoardingNextButton(),
            ],
          ),
        );
  
  }
}
