import 'package:flutter/material.dart';
import 'package:spotify/Screen/Home/View/HomeScreen.dart';
import 'package:spotify/Screen/Search/View/SearchScreen.dart';

class BottomBarScreenProvider extends ChangeNotifier{
  int i = 0;
  List Screens = [
    HomeScreen(),
    SearchScreen(),
  ];

  void changePahe(int value){
    i = value;
    notifyListeners();
  }
}