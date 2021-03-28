## Flutter - Desenvolvimento para Dispositivos Móveis I
### Aplicativo Cálculo IMC

Anotações das primeiras aulas com a framework para desenvolvimento mobile chamada Flutter. Código puramente para consulta caso necessário.

### Observações Importantes

O aplicativo está organizado em pacotes separados, cada um sendo responsável por uma funcionalidade específica. 

- 📁 1 - lib
    - 📁 1.1 - AppCalculadora
        - 📁 1.1.1 - Logica_e_Estado
            - 📜 1.1.1.1 - logicaEstado.dart 
        - 📜 1.1.2 - pagina1Calculadora.dart 
    - 📜 1.2 - main.dart 

#### Organização das pastas acima ⬆️ :

    1 - Pasta principal de componentes Dart
    1.1 - Pasta que contém os padrões de funcionamento do app de IMC.
    1.1.1 - Pasta a qual contém configurações de lógica e do estado da primeira página do aplicativo.
    1.1.1.1 - Arquivo que contém as funções da sua pasta mãe. 
    1.1.2 - Primeira página do aplicativo de IMC.
    1.2 - Classe responsável por renderizar o aplicativo no celular.

### Aviso:

Caso a pessoa deseje deixar todo o código junto, é perfeitamente possível excluir todas essas pastas adicionais, e deixar todo o código contido dentro de [logicaEstado.dart]('https://github.com/2504Guimaraes/Desenvolvimento-Mobile-IMC/blob/master/lib/AppCalculadora/Logica_e_Estado/logicaEstado.dart') e [pagina1Calculadora.dart]('https://github.com/2504Guimaraes/Desenvolvimento-Mobile-IMC/blob/master/lib/AppCalculadora/pagina1Calculadora.dart') dentro de [main.dart]('https://github.com/2504Guimaraes/Desenvolvimento-Mobile-IMC/blob/master/lib/main.dart').