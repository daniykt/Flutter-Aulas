import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Avaliação"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                children: [
                  Text("Atividade"),
                  Text("Avaliativa"),
                ],
              ),
              Column(
                children: [
                  Text("Nome: Danilo da Silva Pereira"),
                  Text("Email:danilo.pereira146@etec.sp.gov.br")
                ],
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("2H3"),
                      Text("Matão"),
                    ],
                  ),
                  Text("2024")
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

//void main() {
//runApp(const Aplicacao());
//}

void main() => runApp(const Aplicacao());
