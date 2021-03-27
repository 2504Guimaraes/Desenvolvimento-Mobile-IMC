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
  // Peso e Altura digitada pela pessoa:
  TextEditingController _alturaDigitada = TextEditingController();
  TextEditingController _pesoDigitado = TextEditingController();

  // Resultado apresentado no final:
  var msgResultadoIMC = '';

  // Métodos para cálculo e classificação do IMC do indivíduo:

  double calculoIMC(double peso, double altura) {
    double resultadoIMC = peso / (altura * altura);
    return resultadoIMC;
  }

  String classificacaoIMC(double resultadoIMC) {
    if (resultadoIMC < 16)
      return 'Magreza Grau III';
    else if (resultadoIMC >= 16 && resultadoIMC <= 16.9)
      return 'Magreza Grau II';
    else if (resultadoIMC >= 17 && resultadoIMC <= 18.4)
      return 'Magreza Grau I';
    else if (resultadoIMC >= 18.5 && resultadoIMC <= 24.9)
      return 'Peso ideal! (Eutrofia)';
    else if (resultadoIMC >= 25 && resultadoIMC <= 29.9)
      return 'Sobrepeso';
    else if (resultadoIMC >= 30 && resultadoIMC <= 34.9)
      return 'Obesidade Grau I';
    else if (resultadoIMC >= 35 && resultadoIMC <= 40)
      return 'Obesidade Grau II';
    else if (resultadoIMC > 40)
      return 'Obesidade Grau III';
    else {
      return null;
    }
  }

  void calcularIMC() {
    double valorPeso = double.tryParse(_pesoDigitado.text);
    double valorAltura = double.tryParse(_alturaDigitada.text);

    if (valorPeso != null && valorAltura != null) {
      double imcGerado = calculoIMC(valorPeso, valorAltura);
      String resultadoIMC = classificacaoIMC(imcGerado);

      setState(() {
        msgResultadoIMC = "Classificação do seu IMC: $resultadoIMC";
      });
    } else {
      setState(() {
        msgResultadoIMC = "Valores do peso ou altura vazios.";
      });
    }
  }

  void esvaziarValoresDigitados() {
    setState(() {
      _pesoDigitado.text = " ";
      _alturaDigitada.text = " ";
    });
  }

  // Método p/ criação do meu Container:
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [

          Padding(
            padding: const EdgeInsets.all(8),
            child: Text(
              'Digite seu peso em quilos e altura em centímetros:',
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey[900]
              ),
              textAlign: TextAlign.center,
            ),
          ),

        ]),
    );
  }
}
