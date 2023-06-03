import 'package:flutter/material.dart';

class Brightness extends StatelessWidget {
  const Brightness({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black12,
      body: Center(
        child: Text("brightness"),
      ),
    );
  }
}
