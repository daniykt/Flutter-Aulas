import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            "Quitanda",
            style: Theme.of(context).textTheme.headlineLarge,
          ),
          const SizedBox(
            width: 200,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Usuario",
              ),
            ),
          ),
          const SizedBox(
            width: 200,
            height: 60,
            child: TextField(
              decoration: InputDecoration(
                labelText: "Senha",
              ),
            ),
          ),
          SizedBox(
            width: 200,
            height: 60,
            child: ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, "/"),
                child: const Text("Entrar")),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Esqueci a senha"),
              Text("Cadastro"),
            ],
          ),
        ],
      ),
    );
  }
}
