import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier {
  bool isArEnabled = false;
  bool isDarkThemeEnabled = false;

  changeCurrentLocale(bool newValue){
    isArEnabled = newValue;
    notifyListeners();
  }

  changeCurrentTheme(bool newValue){
    isDarkThemeEnabled = newValue;
    notifyListeners();
  }
}