

import 'package:flutter/cupertino.dart';

class VisualSearchProvider with ChangeNotifier{

  bool _isInitialized = false;
  bool get isInitialized => _isInitialized; // make a copy of previous bool private variable

  Future<void> initialize() async{
    await Future.delayed(Duration(seconds: 3));
    _isInitialized = true;
    notifyListeners();
  }

}