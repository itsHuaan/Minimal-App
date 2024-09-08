import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData lightMode = ThemeData(
    colorScheme: ColorScheme.light(
      surface: Colors.grey.shade300,
      primary: Colors.grey.shade200,
      secondary: Colors.white,
      inverseSurface: Colors.grey.shade900,
      inversePrimary: Colors.grey.shade800,
    ),
  );

  ThemeData darkMode = ThemeData(
    colorScheme: ColorScheme.dark(
      surface: Colors.grey.shade900,
      primary: Colors.grey.shade800,
      secondary: Colors.grey.shade700,
      inverseSurface: Colors.grey.shade300,
      inversePrimary: Colors.grey.shade200,
    ),
  );

  bool isDarkMode = true;
  ThemeData get currentTheme => isDarkMode ? darkMode : lightMode;

  void changeTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
