

import 'dart:math';

import 'package:flutter/cupertino.dart';

class MainProvider extends ChangeNotifier{

  int _number = 0 ;

  int get number => _number ;

  void getRandomCounter(){
    _number = Random().nextInt(10) ;
    notifyListeners();
  }
}