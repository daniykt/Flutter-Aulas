import 'dart:async';

import 'package:flutter/material.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final num1Controler = TextEditingController();
    final num2Controler = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pergunta e Resposta"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Soma",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: num1Controler,
                decoration: const InputDecoration(
                  labelText: "número 1 ",
                ),
              ),
            ),
            Container(
              child: const Text("+"),
            ),
            SizedBox(
              width: 250,
              child: TextField(
                controller: num2Controler,
                decoration: const InputDecoration(
                  labelText: "número 2",
                ),
              ),
            ),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () =>
                    somar(context, num1Controler.text, num2Controler.text),
                child: const Text("OK"),
              ),
            )
          ],
        ),
      ),
    );
  }

  void somar(BuildContext context, String valor1, valor2) {
    // pega daqui o que o usuario digitou no textfield
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);

    final total = num1 + num2;

    final mensagem = "Resultado: $total";

    ScaffoldMessenger.of(context).showSnackBar(
      // respondendo o ususario
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }
}
