import 'package:flutter/material.dart';
import 'Logica_e_Estado/logicaEstadoPagina1.dart';
import 'pagina2Calculadora.dart';

class PaginaCalculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Calcule seu IMC',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
              icon: Icon(Icons.more_vert),

              // Ação de ir p/ página de informações por meio do click do ícone:

              onPressed: () => {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PaginaInformacoes()))
                  })
        ],
      ),
      body: CalculadoraBody(),
    );
  }
}
