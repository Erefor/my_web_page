import 'package:flutter/cupertino.dart';
import 'package:my_web_page/Pages/UiPages.dart/Emergency%20Page/EmergencyPage.dart';
import 'package:my_web_page/Pages/UiPages.dart/UiFormPage.dart';
import 'package:my_web_page/Pages/UiPages.dart/UiGreenPage.dart';
import 'package:my_web_page/Pages/UiPages.dart/UiShopDemoPage.dart';

class UiPageController with ChangeNotifier{
  int _index = 0;
  int get index => this._index;

  void upIndex(){
    this._index ++;
    notifyListeners();
  }
  void downIndex(){
    this._index --;
    notifyListeners();
  }

  Widget get widget{
    switch (_index) {
      case 0:
        return UiGreenPage();
      case 1:
        return UiFormPage();
      case 2:
        return EmergencyPage(); 
      case 3:
        return UiShopDemoPage();
      default:
        return UiGreenPage();
    }
  }
}