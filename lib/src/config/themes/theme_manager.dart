import 'package:flutter/material.dart';
import 'package:recipely_app_v1/src/config/themes/app_theme.dart';
import 'package:recipely_app_v1/src/data/sources/local/shared/storage_theme.dart';

class ThemeManager extends ChangeNotifier {
  static late bool _isDark;
  ThemeManager() {
    _isDark = false;
    getTheme();
  }

  ThemeData switchTheme() {
    return _isDark ? AppTheme.dark : AppTheme.light;
  }

  getTheme() async {
    _isDark = await StorageTheme().getData();
    notifyListeners();
  }

  setTheme() async {
    _isDark = !_isDark;
    await StorageTheme().saveData(_isDark);
    notifyListeners();
  }
}
