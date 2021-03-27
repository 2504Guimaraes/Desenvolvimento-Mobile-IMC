import 'package:flutter/material.dart';

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

class CalculadoraBody extends StatefulWidget {
  @override
  _LogicaCalculadora createState() => new _LogicaCalculadora();
}

class _LogicaCalculadora extends State<CalculadoraBody> {
  

  // Método p/ criação do meu Container:
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
