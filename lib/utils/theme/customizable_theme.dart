import 'package:flutter/material.dart';

const white = Colors.white;
const black = Colors.black;
const blue = Colors.blue;
const grey = Colors.grey;

// 1  -- Light & Dark AppBar Theme
class PokeAppBarTheme {
  PokeAppBarTheme._(); // To avoid creating a new instance

  // Light AppBar Theme
  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true, // //
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: black, size: 24),
    actionsIconTheme: IconThemeData(color: black, size: 24),
    titleTextStyle:
        TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: black),
  );

  // Dark AppBar Theme
  static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: black, size: 24),
    actionsIconTheme: IconThemeData(color: white, size: 24),
    titleTextStyle:
        TextStyle(fontSize: 18, fontWeight: FontWeight.w600, color: white),
  );
}

// 2  -- Light & Dark Text Themes
class PokeTextTheme {
  PokeTextTheme._(); // To avoid creating instances

  // Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: black),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: black),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: black),
  );

  // Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32, fontWeight: FontWeight.bold, color: white),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24, fontWeight: FontWeight.w600, color: white),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18, fontWeight: FontWeight.w600, color: white),

    // titleLarge:  16  w600
    // titleMedium: 16 w500
    // titleSmall: 16 w400

    // bodyLarge: 14 w500
    // bodyMedium: 14 normal
    // bodySmall: 14  w500    0.5

    // labelLarge: 12 normal
    // labelMedium: 12  normal  0.5
  );
}

// 3  -- Light & Dark Text Form Field Themes
class PokeTextFormField {
  PokeTextFormField._(); // To avoid creating instances

  // Customizable Light Text Form Field Theme
  static InputDecorationTheme lightInputDecoration = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: grey,
    suffixIconColor: grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: black),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: grey),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );

  // Customizable Dark Text Form Field Theme
  static InputDecorationTheme darkInputDecoration = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: grey,
    suffixIconColor: grey,
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: white),
    // errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle:
        const TextStyle().copyWith(color: white.withOpacity(0.8)),
    // border: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(color: grey),
    // ),
    // enabledBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(color: grey),
    // ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(color: white),
    ),
    // errorBorder: const OutlineInputBorder().copyWith(
    //   borderRadius: BorderRadius.circular(14),
    //   borderSide: const BorderSide(color: Colors.red),
    // ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}

// 4  -- Light & Dark Elevated Button Themes
class PokeElevatedButtonTheme {
  PokeElevatedButtonTheme._(); // To avoid creating instances
// Customizable Light Theme
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: white,
      backgroundColor: blue,
      disabledForegroundColor: grey,
      disabledBackgroundColor: grey,
      side: const BorderSide(color: blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
// Customizable Dark Theme
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: black,
      backgroundColor: blue,
      disabledForegroundColor: grey,
      disabledBackgroundColor: grey,
      side: const BorderSide(color: blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(
        fontSize: 16,
        color: black,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    ),
  );
}

/// 1 appbar ^
/// 2 text
/// 3 text field ^
/// 4 elevated button
/// 5 bottom sheet
/// 6 checkbox
/// 7 chip
/// 8 outlined button
