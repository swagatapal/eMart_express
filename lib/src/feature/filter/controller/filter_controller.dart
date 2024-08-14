import 'package:flutter/material.dart';

class FilterProvider with ChangeNotifier {



  double _startValue = 0.0;
  double _endValue = 100.0;
  final double _maxValue = 500.0;

  double get startValue => _startValue;
  double get endValue => _endValue;
  double get maxValue => _maxValue;

  void updateStartValue(double newValue) {
    _startValue = newValue;
    if (_endValue < _startValue) {
      _endValue = _startValue;
    }
    notifyListeners();
  }

  void updateEndValue(double newValue) {
    _endValue = newValue;
    if (_endValue < _startValue) {
      _startValue = _endValue;
    }
    notifyListeners();
  }




  List<Color> _selectedColors = [];

  List<Color> get selectedColors => _selectedColors;

  void toggleColorSelection(Color color) {
    if (_selectedColors.contains(color)) {
      _selectedColors.remove(color);
    } else {
      _selectedColors.add(color);
    }
    notifyListeners();
  }
}
