import 'package:flutter/material.dart';

class PaddingViewModel extends ChangeNotifier {
  double paddingValue = 16.0;

  void updatePadding(double newPadding) {
    paddingValue = newPadding;
    notifyListeners();
  }
}
