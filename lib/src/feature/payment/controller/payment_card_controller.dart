import 'package:emart_express/src/feature/payment/model/card_model.dart';
import 'package:flutter/material.dart';

class PaymentCardController with ChangeNotifier {
  List<CardInfo> _cards = [];
  int? _defaultCardIndex;

  List<CardInfo> get cards => _cards;
  int? get defaultCardIndex => _defaultCardIndex;

  void addCard(CardInfo card) {
    _cards.add(card);
    notifyListeners();
  }

  void setDefaultCard(int index) {
    _defaultCardIndex = index;
    notifyListeners();
  }

  void toggleCheckbox(int index) {
    if (_defaultCardIndex == index) {
      _defaultCardIndex = null; // Unselect if already selected
    } else {
      _defaultCardIndex = index;
    }
    notifyListeners();
  }
}