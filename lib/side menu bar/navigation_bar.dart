import 'package:flutter/material.dart';
import 'package:navigation/side%20menu%20bar/data.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'menu_model.dart';

// ignore: must_be_immutable
class MyNavigationBar extends StatefulWidget {
  const MyNavigationBar({
    Key? key,
  }) : super(key: key);

  @override
  State<MyNavigationBar> createState() => _MyNavigationBarState();
}

class _MyNavigationBarState extends State<MyNavigationBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20), topRight: Radius.circular(20))),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: menuItem
              .map((currentmenuInfo) =>
                  Consumer<MenuModel>(builder: (context, value, child) {
                    return InkWell(
                        onTap: () {
                          value.updateMenuinfo(currentmenuInfo);
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(currentmenuInfo.imgsourse,
                                colorFilter: ColorFilter.mode(
                                    currentmenuInfo.menuType == value.menuType
                                        ? Colors.black
                                        : const Color.fromARGB(
                                            255, 168, 168, 168),
                                    BlendMode.srcIn)),
                            if (currentmenuInfo.menuType == value.menuType)
                              Padding(
                                padding: const EdgeInsets.all(3),
                                child: Container(
                                  height: 3,
                                  width: 3,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.black),
                                ),
                              )
                          ],
                        ));
                  }))
              .toList()),
    );
  }
}
