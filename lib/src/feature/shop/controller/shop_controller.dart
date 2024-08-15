import 'package:flutter/material.dart';

class ShopProvider with ChangeNotifier {
  String _selectedFilter = "Price: Lowest to High"; // Default value

  String get selectedFilter => _selectedFilter;

  void setSelectedFilter(String newFilter) {
    _selectedFilter = newFilter;
    notifyListeners();
  }
}
