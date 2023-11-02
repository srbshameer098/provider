

import 'package:flutter/material.dart';


class A with ChangeNotifier {
  int counter =0;


  void changeValue () {
    counter = counter + 1;
    notifyListeners();
  }
  void changeValue1 () {
    counter = counter - 1;
    notifyListeners();
  }
}