import 'package:intl/intl.dart';

// -- Checking Formats
class PokeFormatter {
  // -- Date Format
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MM-yyyy').format(date);
  }
  //// Phone Number  Format ////
}

// -- Validation
class PokeValidator {
  // -- Email Address validator
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    // Regular Expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid email address.';
    }
    return null;
  }

  // -- Pasword validator
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    // Check for minimum password length
    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }
    return null;
  }

  // -- Phone Number validator
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    // Regular Expression for phone numbers (01001167205)
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid phone number format (11 digits required).';
    }
    return null;
  }
}
