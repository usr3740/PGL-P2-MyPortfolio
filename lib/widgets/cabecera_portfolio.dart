import 'package:flutter/material.dart';

class CabeceraPortfolio extends StatelessWidget {
  const CabeceraPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color.fromARGB(255, 165, 0, 1),
      padding: const EdgeInsets.all(12),
      child: const Text(
        'Este es mi portfolio',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 255, 91, 53),
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}