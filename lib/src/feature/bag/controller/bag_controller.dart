import 'package:emart_express/src/feature/bag/model/bag_item_model.dart';
import 'package:flutter/foundation.dart';

class BagProvider extends ChangeNotifier {

  final List<BagItem> _items = getDummyData();


  List<BagItem> get items => _items;

  int get totalPrice => _items.fold(0, (total, item) => total + (item.itemCount * item.pricePerItem));

  void addItem(BagItem item) {
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
