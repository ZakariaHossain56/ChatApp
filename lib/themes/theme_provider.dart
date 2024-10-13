import 'package:chat_app/themes/dark_mode.dart';
import 'package:chat_app/themes/light_mode.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeData _themeData = lightMode;

  static const String _themePreferenceKey = "themePreference"; // Key for shared preferences

  ThemeProvider() {
    _loadThemeFromPrefs(); // Load saved theme on initialization
  }

  ThemeData get themeData => _themeData;
  
  bool get isDarkMode => _themeData == darkMode;

  set themeData(ThemeData themeData){
    _themeData = themeData;
    _saveThemeToPrefs(); // Save the selected theme
    notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == lightMode){
      themeData = darkMode;
    }
    else{
      themeData = lightMode;
    }
  }

  // Load theme from SharedPreferences
  void _loadThemeFromPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isDark = prefs.getBool(_themePreferenceKey) ?? false; // Default to light mode
    _themeData = isDark ? darkMode : lightMode;
    notifyListeners();
  }

  // Save the selected theme to SharedPreferences
  void _saveThemeToPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(_themePreferenceKey, _themeData == darkMode);
  }
}