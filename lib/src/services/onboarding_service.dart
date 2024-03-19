import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:social_media/app/view/app.dart';
import 'package:social_media/src/pages/on_boarding/controller.dart';

class OnBoardingService {
  
  final PageController pageController = PageController();
  final OnBoardingController controller =
      GetIt.instance.get<OnBoardingController>();

  SharedPreferences? _instance;

  Future<void> init() async {
    // Initialize any necessary dependencies or configurations here
    _instance = await SharedPreferences.getInstance();

    return memoizer.runOnce(() async {
      // Perform any initialization tasks here
      await Future.delayed(const Duration(seconds: 2));
      print('OnBoardingService initialized');
    });
  }

  int getCurrentPageIndex() {
    return controller.currentPageIndexRx as int; // Access the 'value' getter
  }

  PageController getPageController() {
    return controller.pageController;
  }
}
