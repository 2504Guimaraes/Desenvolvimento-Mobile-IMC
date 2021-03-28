import 'package:flutter/material.dart';
import 'AppCalculadora/pagina1Calculadora.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Atividade Calculadora IMC',
        home: PaginaCalculadora());
  }
}
