import 'package:flutter/material.dart';

class ThemeChanger with ChangeNotifier {
  bool _dark;

  ThemeChanger(this._dark);

  getTheme() => _dark;
  setTheme(bool dark) {
    _dark = dark;

    notifyListeners();
  }
}