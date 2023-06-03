import 'package:flutter/material.dart';

import 'enum.dart';

class MenuModel extends ChangeNotifier {
  MenuType menuType;
  String title;
  String imgsourse;

  MenuModel(
    this.menuType, {
    this.imgsourse = "none",
    this.title = "none",
  });

  updateMenuinfo(MenuModel menuInfo) {
    menuType = menuInfo.menuType;
    title = menuInfo.title;
    imgsourse = menuInfo.imgsourse;

    notifyListeners();
  }
}
