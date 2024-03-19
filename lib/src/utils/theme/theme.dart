import 'package:flutter/material.dart';
import 'package:social_media/src/utils/const.dart';
import 'package:social_media/src/utils/theme/customizable_theme.dart';

// App Appearances
class PokeTheme {
  PokeTheme._(); // To avoid creating instances

  // // -- Light Theme --
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: blue,
    textTheme: PokeTextTheme.lightTextTheme,
    scaffoldBackgroundColor: white,
    appBarTheme: PokeAppBarTheme.lightAppBarTheme,
    elevatedButtonTheme: PokeElevatedButtonTheme.lightElevatedButtonTheme,
    // chipTheme:
    // checkboxTheme: ,
    // bottomSheetTheme: ,
    // outlinedButtonTheme: ,
    inputDecorationTheme: PokeTextFormField.lightInputDecoration,
    // inputDecorationTheme: PokeTextTheme.lightTextTheme,
  );

  // // -- Dark Theme --
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    // fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: blue,
    textTheme: PokeTextTheme.darkTextTheme,
    scaffoldBackgroundColor: white,
    appBarTheme: PokeAppBarTheme.darkAppBarTheme,
    elevatedButtonTheme: PokeElevatedButtonTheme.darkElevatedButtonTheme,
    // chipTheme:
    // checkboxTheme: ,
    // bottomSheetTheme: ,
    // outlinedButtonTheme: ,
    inputDecorationTheme: PokeTextFormField.darkInputDecoration,
  );

  // // -- Cheak Dark Theme --
  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
}
