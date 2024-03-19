import 'package:flutter/material.dart';
// Some Constants all over the application 'Poke App'

// // // Colors // // //
// Neutral Shades
const white = Colors.white; // - Light
const black = Colors.black; // - Dark
const blue = Colors.blue;
const grey = Colors.grey;
Color dgrey = Colors.grey.shade800;

// primary
//  secondary
// accent

// text
// background
// background container
// button
// border
// error & validation
// Gradient Colors

const Gradient linerGradient = LinearGradient(
  begin: Alignment(0, 0),
  end: Alignment(0.7, -0.7),
  colors: [
    Colors.brown,
    Colors.yellow,
    Colors.orange,
  ],
);

// // // Images // // //
// -- Poke App Logos
const String lightPokeLogo = 'assets/images/poke-white.png';
const String darkPokeLogo = 'assets/images/poke-black.png';

// -- OnBoarding Images
const String onBoardingImage = 'assets/images/onboarding.gif';

//  // // Global Texts // // //
// -- OnBoarding Texts
const String onBoardingTitle1 = 'onBoardingTitle1';
const String onBoardingTitle2 = 'onBoardingTitle2';
const String onBoardingTitle3 = 'onBoardingTitle3';

const String onBoardingSubTitle1 = 'onBoardingSubTitle1';
const String onBoardingSubTitle2 = 'onBoardingSubTitle2';
const String onBoardingSubTitle3 = 'onBoardingSubTitle3';

// -- Home
const String homeAppbarTitle = 'homeTitle';
const String homeAppbarSubTitle = 'homeSubTitle';

// // // Spacing // // //
const double defaultSpace = 24;
const double spaceBtwItems = 16;
const double spaceBtwSections = 32;
