import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:social_media/src/pages/on_boarding/controller.dart';
import 'package:social_media/src/utils/const.dart';
import 'package:social_media/src/utils/device_utility.dart';
import 'package:social_media/src/utils/theme/theme.dart';

late final OnBoardingController controller;

// // //
class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    required this.image,
    required this.title,
    required this.subTitle,
    super.key,
  });

  final String image;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(defaultSpace),
      child: Column(
        children: [
          Image(
            width: PokeDeviceUtils.getScreenWidth(context) * 0.8,
            height: PokeDeviceUtils.getScreenHeight(context) * 0.6,
            image: AssetImage(image),
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: spaceBtwItems),
          Text(
            subTitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}

// // // Skip Button // // //
class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: PokeDeviceUtils.getAppBarHeight(),
      right: defaultSpace,
      child: TextButton(
        onPressed: () => controller.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}

// // // Dot Navigation SmoothPageIndicator
class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PokeTheme.isDarkMode(context);

    return Positioned(
      bottom: PokeDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: defaultSpace,
      child: SmoothPageIndicator(
        controller: PageController(),
        onDotClicked: controller.dotNavigationonClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? white : dgrey,
          dotHeight: 6,
        ),
      ),
    );
  }
}

// // // Circular Next Button
class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = PokeTheme.isDarkMode(context);

    return Positioned(
      right: defaultSpace,
      bottom: PokeDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => controller.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? blue : black,
        ),
        child: const Icon(Icons.keyboard_arrow_right_sharp),
      ),
    );
  }
}
