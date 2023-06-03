import 'package:flutter/material.dart';

import 'package:navigation/screens/brightness.dart';
import 'package:navigation/screens/copy.dart';
import 'package:navigation/screens/quote.dart';
import 'package:navigation/screens/wave.dart';
import 'package:navigation/side%20menu%20bar/enum.dart';
import 'package:navigation/side%20menu%20bar/menu_model.dart';
import 'package:navigation/side%20menu%20bar/navigation_bar.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerFloat,
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(Icons.add),
          ),
          body: Column(
            children: [
              Expanded(
                child: Consumer<MenuModel>(
                  builder: (BuildContext context, value, Widget? child) {
                    switch (value.menuType) {
                      case MenuType.brightness:
                        return const Brightness();
                      case MenuType.quote:
                        return const Quote();

                      case MenuType.wave:
                        return const Wave();
                      case MenuType.copy:
                        return const Copy();

                      default:
                        return Container(); // Return a default widget if none of the cases match
                    }
                  },
                ),
              ),
              const MyNavigationBar(),
            ],
          )),
    );
  }
}
