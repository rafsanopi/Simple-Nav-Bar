import 'package:flutter/material.dart';
import 'package:navigation/home.dart';
import 'package:navigation/side%20menu%20bar/enum.dart';
import 'package:navigation/side%20menu%20bar/menu_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MenuModel>(
          create: (context) => MenuModel(
            MenuType.brightness,
          ),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const Home(),
      ),
    );
  }
}
