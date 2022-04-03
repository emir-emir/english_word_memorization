import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  var ingilizceCounter = 0;
  var turkceCounter = 0;

  void ingilizceArttir() {
    ingilizceCounter++;
    notifyListeners();
  }

  void ingilizceAzalt() {
    ingilizceCounter--;
    notifyListeners();
  }

  void turkceArttir() {
    turkceCounter++;
    notifyListeners();
  }

  void turkceAzalt() {
    turkceCounter--;
    notifyListeners();
  }
}
