import 'package:flutter/material.dart';

import '../model/order_item_model.dart';
class OrderProvider extends ChangeNotifier {

  final List<OrderItem> _items = getDummyData();


  List<OrderItem> get items => _items;

  int get totalPrice => _items.fold(0, (total, item) => total + (item.itemCount * item.pricePerItem));

  void addItem(OrderItem item) {
    _items.add(item);
    notifyListeners();
  }

  void incrementItem(String id) {
    final item = _items.firstWhere((item) => item.id == id);
    item.itemCount++;
    notifyListeners();
  }

  void decrementItem(String id) {
    final item = _items.firstWhere((item) => item.id == id);
    if (item.itemCount > 0) {
      item.itemCount--;
      notifyListeners();
    }
  }
}