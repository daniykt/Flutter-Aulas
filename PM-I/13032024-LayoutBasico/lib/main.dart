import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //Colocar MaterialApp aqui (vê se sempre é assim)
      home: HomePage(), //é o homepage aqui
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //scaffold a base do app (a tela)
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        //o Padding faz as coisas se fica distante
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment:
              MainAxisAlignment.spaceBetween, //Vê sobre isso na internet
          crossAxisAlignment:
              CrossAxisAlignment.start, //Vê sobre isso na internet
          children: [
            Text("Atividade!"),
            Column(
              //Column usa vários filhos então é children
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nome: Danilo da Silva"),
                Text("Email: danilo.pereira146@etec.sp.gov.br"),
                Text("Idade: 19 anos"),
              ],
            ),
            Center(
              //center só aceita um filho então usa child
              child: Text("13/03/2024"),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [Text("2H3"), Text("Matão")],
            ),
          ],
        ),
      ),
    );
  }
}
