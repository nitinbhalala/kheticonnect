import 'package:flutter/material.dart';

class HomeProvider extends ChangeNotifier {
  int selectedCategoryIndex = 0;

  void onIndexChange(int index) {
    selectedCategoryIndex = index;
    notifyListeners();
  }
}
