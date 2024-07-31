import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final num1Controller = TextEditingController();
    final num2Controller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            textfield("Número 1", num1Controller),
            textfield("Número 2", num2Controller),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () => soma(
                    context,
                    num1Controller.text,
                    num2Controller.text,
                  ),
                  child: const Text("Soma"),
                ),
                ElevatedButton(
                  onPressed: () => subtracao(
                    context,
                    num1Controller.text,
                    num2Controller.text,
                  ),
                  child: const Text("Subtração"),
                ),
                ElevatedButton(
                  onPressed: () => multiplicacao(
                    context,
                    num1Controller.text,
                    num2Controller.text,
                  ),
                  child: const Text("Multiplicação"),
                ),
                ElevatedButton(
                  onPressed: () => divisao(
                    context,
                    num1Controller.text,
                    num2Controller.text,
                  ),
                  child: const Text("Divisão"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final soma = num1 + num2;

    final resposta = "$num1 + $num2 = $soma";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void subtracao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final subtracao = num1 - num2;

    final resposta = "$num1 - $num2 = $subtracao";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void multiplicacao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final multiplicacao = num1 * num2;

    final resposta = "$num1 x $num2 = $multiplicacao";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  void divisao(BuildContext context, String valor1, valor2) {
    final num1 = int.parse(valor1);
    final num2 = int.parse(valor2);
    final divisao = num1 / num2;

    final resposta = "$num1 / $num2 = $divisao";

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(resposta),
      ),
    );
  }

  Widget textfield(String label, TextEditingController controller) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
      ),
      keyboardType: TextInputType.number,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }
}