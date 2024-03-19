import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:flutter/cupertino.dart';
import 'package:social_media/get_it_config.dart';
import 'package:social_media/src/services/user_service.dart';

@lazySingleton
class OnBoardingController extends BdayaCombinedController {
  OnBoardingController(/*add getIt dependencies here*/);

  OnBoardingController controller = getIt.get<OnBoardingController>();

  // Variables
  final pageController = PageController();
  final currentPageIndexRx = SharedValue<int>(value: 0);

  // -- Update Current Index when Page Scroll
  void updatePageIndicator(int index) => currentPageIndexRx.$ = index;

  // -- Jump to the specific dot selected page
  void dotNavigationonClick(int index) {
    currentPageIndexRx.$ = index;
    pageController.jumpToPage(index);
  }

  // -- Update Current Index & jump to next page
  void nextPage() {
    if (currentPageIndexRx == 2) {
      // Go to login page
      getIt<UserService>().login();
    } else {
      final page = currentPageIndexRx.$ + 1;
      pageController.jumpToPage(page);
    }
  }

  // -- Update Current Index & jump to last page
  void skipPage() {
    currentPageIndexRx.$ = 2;
    pageController.jumpToPage(2);
  }
}
