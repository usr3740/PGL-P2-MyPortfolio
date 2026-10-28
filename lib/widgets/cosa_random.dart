import 'package:flutter/material.dart';

class CosaRandom extends StatelessWidget {
  final String texto;

  const CosaRandom({
    super.key,
    required this.texto,
  });

  static const EdgeInsets espaciado = EdgeInsets.symmetric(
    horizontal: 8,
    vertical: 4,
  );

  static const TextStyle estiloTexto = TextStyle(
    color: Colors.white,
    fontSize: 16,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 50,
      decoration: BoxDecoration(
        color: const Color.fromARGB(216, 0, 69, 119),
        border: Border.all(
          color: const Color.fromARGB(255, 77, 59, 143),
          width: 2,
        ),
      ),
      child: Center(
        child: Padding(
          padding: espaciado,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              texto,
              style: estiloTexto,
            ),
          ),
        ),
      ),
    );
  }
}