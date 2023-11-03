

import 'package:flutter/material.dart';


class A with ChangeNotifier {
  dynamic counter =0;



  void changeValue () {
    counter = counter + 1;
    notifyListeners();
  }
  void changeValue1 () {
    counter = counter - 1;
    notifyListeners();
  }
  void button1 () {
    counter =  1;
    notifyListeners();
  }
  void button2 () {
    counter =  2;
    notifyListeners();
  }
  void button3 () {
    counter =  3;
    notifyListeners();
  }
  void button4 () {
    counter =  4;
    notifyListeners();
  }
  void button5 () {
    counter =  5;
    notifyListeners();
  }
  void button6 () {
    counter =  6;
    notifyListeners();
  } void button7 () {
    counter =  7;
    notifyListeners();
  }
  void button8 () {
    counter =  8;
    notifyListeners();
  }
  void button9 () {
    counter =  9;
    notifyListeners();
  }

  void button00 () {
    counter =  '00';
    notifyListeners();
  }

  void button0 () {
    counter =  0;
    notifyListeners();
  }

  void buttondot () {
    counter =  '.';
    notifyListeners();
  }

  void buttonc () {
    counter = '';

    notifyListeners();
  }


}