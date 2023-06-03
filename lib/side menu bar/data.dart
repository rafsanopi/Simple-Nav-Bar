import 'enum.dart';
import 'menu_model.dart';

List<MenuModel> menuItem = [
  MenuModel(
    MenuType.brightness,
    imgsourse: "assets/menu/brightnes.svg",
    title: "brightness",
  ),
  MenuModel(MenuType.quote, imgsourse: "assets/menu/quote.svg", title: "quote"),
  MenuModel(MenuType.wave, imgsourse: "assets/menu/wave.svg", title: "wave"),
  MenuModel(MenuType.copy, imgsourse: "assets/menu/copy.svg", title: "copy"),
];
