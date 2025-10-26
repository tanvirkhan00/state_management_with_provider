import 'package:flutter/cupertino.dart';

class CounterController extends ChangeNotifier {

  int counter = 0;

  void increment() {
    counter ++;
    notifyListeners();
  }

  void decrement() {
    counter --;
    notifyListeners();
  }
}