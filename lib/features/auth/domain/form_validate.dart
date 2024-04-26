import 'package:flutter/services.dart';

class EmailInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regex = RegExp('[^a-zA-Z0-9@._-]');
    if (regex.hasMatch(newValue.text)) {
      return oldValue;
    }
    return newValue;
  }
}

class PasswordInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final regex = RegExp('[^a-zA-Z0-9@#\$%&-_.]');
    if (regex.hasMatch(newValue.text)) {
      return oldValue;
    }
    return newValue;
  }
}

mixin Validators {
  bool validateEmail(String email) {
    return email.contains('@') && email.contains('.');
  }

  bool validatePassword(String password) {
    return password.length >= 6;
  }

  bool validateConfirmPassword(String password, String confirmPassword) {
    return password == confirmPassword;
  }
}
