import 'package:flutter/material.dart';

class ProductProvider with ChangeNotifier {
  int _currentPage = 0;

  int get currentPage => _currentPage;

  void updatePage(int page) {
    _currentPage = page;
    notifyListeners();
  }


  int _selectedBoxIndex = -1;
  int get selectedBoxIndex => _selectedBoxIndex;
  void selectBox(int index) {
    _selectedBoxIndex = index;
    notifyListeners();
  }

  void deselectBox() {
    _selectedBoxIndex = -1;
    notifyListeners();
  }



  final Set<String> _selectedSizes = {};

  Set<String> get selectedSizes => _selectedSizes;

  bool isSelectedSizes(String size) => _selectedSizes.contains(size);

  void toggleSizes(String size) {
    if (_selectedSizes.contains(size)) {
      _selectedSizes.remove(size);
    } else {
      _selectedSizes.add(size);
    }
    notifyListeners(); // Notify listeners when selection changes
  }
}
