import 'package:flutter/material.dart';

class ToggleProvider with ChangeNotifier {
  final Map<int, bool> _switchValues = {
    0: false,
    1: false,
    2: false,
  };

  bool getSwitchValue(int index) {
    return _switchValues[index] ?? false;
  }

  void toggleSwitch(int index, bool value) {
    _switchValues[index] = value;
    notifyListeners();
  }
}
