import 'package:flutter/material.dart';

class BienvenidaScreen extends StatelessWidget {
  const BienvenidaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [Positioned.fill(child: Image.asset("assets/images/Anfiteatro.png", fit: BoxFit.cover))],
      ),
    );
  }
}
