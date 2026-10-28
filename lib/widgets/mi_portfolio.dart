import 'package:flutter/material.dart';
import 'cabecera_portfolio.dart';
import 'perfil_portfolio.dart';
import 'contenido_portfolio.dart';
import 'navegacion_portfolio.dart';

class MiPortfolio extends StatefulWidget {
  const MiPortfolio({super.key});

  @override
  State<MiPortfolio> createState() => _MiPortfolioState();
}

class _MiPortfolioState extends State<MiPortfolio> {
  int opcionBody = 0;

  void cambiarSeccion(int nuevaOpcion) {
    setState(() {
      opcionBody = nuevaOpcion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const CabeceraPortfolio(),
            PerfilPortfolio(opcionBody: opcionBody),
            Expanded(
              child: ContenidoPortfolio(
                opcionBody: opcionBody,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavegacionPortfolio(
        opcionSeleccionada: opcionBody,
        onCambiarSeccion: cambiarSeccion,
      ),
    );
  }
}