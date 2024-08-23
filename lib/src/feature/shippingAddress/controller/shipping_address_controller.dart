import 'package:emart_express/src/feature/payment/model/card_model.dart';
import 'package:flutter/material.dart';

class ShippingAddressController with ChangeNotifier {
  int _selectedCardIndex = -1; // -1 means no card is selected

  int get selectedCardIndex => _selectedCardIndex;

  void toggleDefault(int index) {
    _selectedCardIndex = index;
    notifyListeners();
  }


}