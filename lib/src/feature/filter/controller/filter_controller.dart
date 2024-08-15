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




  final List<Color> _selectedColors = [];
  List<Color> get selectedColors => _selectedColors;
  void toggleColorSelection(Color color) {
    if (_selectedColors.contains(color)) {
      _selectedColors.remove(color);
    } else {
      _selectedColors.add(color);
    }
    notifyListeners();
  }


  final Set<String> _selectedSizes = {};
  Set<String> get selectedSizes => _selectedSizes;
  void toggleSize(String size) {
    if (_selectedSizes.contains(size)) {
      _selectedSizes.remove(size);
    } else {
      _selectedSizes.add(size);
    }
    notifyListeners();
  }

  bool isSelected(String size) {
    return _selectedSizes.contains(size);
  }


  final Set<String> _selectedCategories = {};
  Set<String> get selectedCategories => _selectedCategories;
  void toggleCategory(String category) {
    if (_selectedCategories.contains(category)) {
      _selectedCategories.remove(category);
    } else {
      _selectedCategories.add(category);
    }
    notifyListeners();
  }

  bool isSelectedCategory(String category) => _selectedCategories.contains(category);


  final List<String> _selectedItems = [];
  List<String> get selectedItems => _selectedItems;
  void toggleSelection(String item) {
    if (_selectedItems.contains(item)) {
      _selectedItems.remove(item);
    } else {
      _selectedItems.add(item);
    }
    notifyListeners();
  }

  bool isSelectedBrandItem(String item) => _selectedItems.contains(item);
}
