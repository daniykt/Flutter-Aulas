import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  final inputController = TextEditingController();

  String numero = "";

  @override
  Widget build(BuildContext context) {
    inputController.addListener(
      () => setState(() {
        numero = inputController.text;
      }),
    );

    final messagem;
    var num = int.tryParse(numero);

    if (num == null) {
      messagem = "Informe pelo menos um número seu fdp!";
    } else if (num % 2 == 0) {
      messagem = "Obrigado!";
    } else {
      messagem = "Você sabe o que é um número par?";
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text("Menu"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: "Informe um número par",
              ),
            ),
          ],
        ),
      ),
    );
  }



  //void avalia(String numero) {
    //tryParse, tenta fazer o parse de uma tring em numero
    //se a string, por exemplo, for "aaa"
    //como não é um número válido, ao inves de gerar erro, ele retorna null
    //final numero = int.tryParse(numero);

    //setState é um método que serve para atualizar o estado e causar, por
    //consequencia, uma mudança na tela/atualização na tela
  }
//}
