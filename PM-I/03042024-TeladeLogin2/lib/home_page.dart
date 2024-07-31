import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final usuarioController = TextEditingController();
    final senhaController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment
                .spaceEvenly, //MainAxisAlignment.center testa em casa
            children: [
              SizedBox(
                width: 200,
                height: 60,
                child: TextField(
                  controller: usuarioController,
                  decoration: const InputDecoration(
                    labelText: "Usuario",
                  ),
                ),
              ),
              SizedBox(
                width: 200,
                height: 60,
                child: TextField(
                  controller: senhaController,
                  decoration: const InputDecoration(
                    labelText: "Senha",
                  ),
                  obscureText: true,
                  autocorrect: false,
                ),
              ),
              SizedBox(
                width: 100,
                height: 30,
                child: ElevatedButton(
                    onPressed: () => login(
                        context, usuarioController.text, senhaController.text),
                    child: const Text("Entrar")),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login(BuildContext context, String usuario, String senha) {
    String mensagem;

    if (usuario == "admin" && senha == "102030") {
      mensagem = "Seja bem vindo, Administrador!";
    } else {
      mensagem = "Crendenciais inválidas!";
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(mensagem),
      ),
    );
  }
}
