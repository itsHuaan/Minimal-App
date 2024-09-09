import 'package:flutter/material.dart';
import 'package:minimal_shop/themes/themes.dart';

class ThemeProvider extends ChangeNotifier {
  bool isDarkMode = true;
  ThemeData get currentTheme => isDarkMode ? darkMode : lightMode;

  void changeTheme() {
    isDarkMode = !isDarkMode;
    notifyListeners();
  }
}
