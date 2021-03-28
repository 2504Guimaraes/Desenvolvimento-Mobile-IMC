import 'package:flutter/material.dart';
import 'Logica_e_Estado/logicaEstado.dart';

class PaginaCalculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora de IMC'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent[400],
      ),
      body: CalculadoraBody(),
    );
  }
}
