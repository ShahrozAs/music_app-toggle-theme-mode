import 'package:flutter/material.dart';
import 'package:music/themes/dark_mode.dart';
import 'package:music/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier{
//initially light mode
ThemeData _themedata=lightMode;

//get theme
ThemeData get themeData =>_themedata;

//is dark mode
bool get isDarkMode => _themedata==darkMode;

//set theme
set themeData(ThemeData themeData){
  _themedata=themeData;
  notifyListeners();
}

//toggle theme
void toggleTheme(){
  if (_themedata==lightMode) {
    themeData=darkMode;
  } else {
    themeData=lightMode;
  }
}

}