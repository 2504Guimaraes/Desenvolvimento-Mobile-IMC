import 'package:flutter/material.dart';

class PaginaInformacoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Informações sobre IMC',
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center),
      ),
      body: Pagina2Body(),
    );
  }
}

class Pagina2Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              'O que é IMC?',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 20),
            child: Text(
                'O Índice de Massa Corporal é reconhecido  internacionalmente  pela  Organização  Mundial  da  Saúde  (OMS),  ele indica o peso  adequado para  cada  pessoa,  fazendo  uma  relação  entre  a  massa  corpórea  e  altura.  No entanto,  não  mede  diretamente  a  gordura  corporal,  pois  não  contempla  a  estrutura  óssea, massa  magra,  massa  gorda  e  líquidos.  A  importância  de  estar  dentro  do  peso  ideal  está diretamente ligada ao estado de saúde.',
                textAlign: TextAlign.justify),
          ),
          TabelaSobreIMC()
        ],
      ),
    );
  }
}

class TabelaSobreIMC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // Teste de reaproveitamento de variável:
    const corPreta = Colors.black;

    return Container(
      height: 225,
      child: SingleChildScrollView(
        child: DataTable(
          columns: <DataColumn>[
            DataColumn(
              label: Text(
                'IMC',
                style: TextStyle(
                  color: corPreta,
                  fontSize: 16,
                ),
              ),
            ),
            DataColumn(
              label: Text(
                'Classificação',
                style: TextStyle(
                  color: corPreta,
                  fontSize: 16,
                ),
              ),
            )
          ],
          rows: [
            DataRow(
              cells: [ 
                DataCell(Text('< 16kg')), 
                DataCell(Text('Magreza Grau III'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('16 a 16.9kg')), 
                DataCell(Text('Magreza Grau II'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('17 a 18.4kg')), 
                DataCell(Text('Magreza Grau I'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('18.5 a 24.9kg')), 
                DataCell(Text('Eutrofia (Peso Ideal)'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('25 a 29.9kg')), 
                DataCell(Text('Sobrepeso'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('30 a 34.9kg')), 
                DataCell(Text('Obesidade Grau I'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('35 a 40kg')), 
                DataCell(Text('Obesidade Grau II'))
              ]
            ),
            DataRow(
              cells: [ 
                DataCell(Text('> 40kg')), 
                DataCell(Text('Obesidade Grau III'))
              ]
            ),
          ],
        )
      )
    );
  }
}
