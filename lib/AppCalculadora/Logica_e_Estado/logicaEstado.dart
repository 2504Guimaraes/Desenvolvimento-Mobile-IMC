import 'package:flutter/material.dart';

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
                'Digite seu peso em quilos e altura em metros:',
                style: TextStyle(fontSize: 18, color: Colors.grey[900]),
                textAlign: TextAlign.center,
              ),
            ),
            TextField(
              controller: _pesoDigitado,
              decoration: InputDecoration(
                labelText: 'Digite seu peso',
                hintText: 'Exemplo: 80 (kgs)',
                hintStyle: TextStyle(color: Colors.grey[900]),
              ),
            ),
            TextField(
              controller: _alturaDigitada,
              decoration: InputDecoration(
                labelText: 'Digite sua altura',
                hintText: 'Exemplo: 1.80 (metros)',
                hintStyle: TextStyle(color: Colors.grey[900]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 320,
                  margin: const EdgeInsets.only(top: 15),
                  child: RaisedButton(
                    padding: EdgeInsets.fromLTRB(10, 15, 10, 15),
                    onPressed: () {
                      calcularIMC();
                      esvaziarValoresDigitados();
                    },
                    color: Colors.pinkAccent[400],
                    child: Text(
                      'Calcular seu IMC',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.all(25),
              child: Text(
                msgResultadoIMC,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black
                )
              ),
            )
          ]),
    );
  }
}