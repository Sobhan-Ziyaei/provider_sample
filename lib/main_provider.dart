

import 'dart:math';

import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier{

  int _number = 0 ;

  int get number => _number ;

  void getcounter(){
    ++_number ;
    notifyListeners();
  }

  void getResetNumber(){
    _number = 0;
    notifyListeners();
  }
}