import 'package:flutter/cupertino.dart';

class EbodasBloc extends ChangeNotifier {
  bool isDarkMode = false;

  void changeMode(bool mode) {
    isDarkMode = mode;
    notifyListeners();
  }
}