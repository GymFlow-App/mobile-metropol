import 'package:flutter/material.dart';

class BaseViewModel with ChangeNotifier {
  bool isLoading = false;

  updateLoadingState(bool state) {
    isLoading = state;
    refreshView();
  }

  void refreshView() {
    notifyListeners();
  }
}
