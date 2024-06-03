import 'package:flutter/material.dart';
import 'package:frutas_2/util/data.dart';
import 'package:frutas_2/vm/auth.dart';
import 'package:provider/provider.dart';

class PerfilPage extends StatelessWidget {
  const PerfilPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = Provider.of<Auth>(context);
    final usuario = auth.usuario;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Perfil"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                //usuario?.nome ?? ""
                //usuario?.nome ?? "" é usado quando a variacel usuario
                //pode estar nula para prevenir erro obter seu
                //caso a variavel usuario esteja nula já retorna null
                //sem nem tenta acessar o nome, do contrário pega
                //o nome armazenado
                //
                //usuario?.nome ?? "" por conta da primeira parte
                //onde null será retornado caso o usuario esteja
                //nulo a getnte coloca o ?? "" para prevenir que
                //o resultado final fique nulo.. .nesse caso, vamos
                //garantir que o valor seja, ao menos, uma string vazia
                usuarioData("Nome", usuario?.nome ?? ""),
                usuarioData("Email", usuario?.email ?? ""),
                usuarioData("Login", usuario?.login ?? ""),
              ],
            ),
            Text("Logado desde ${formataData(auth.logouEm ?? DateTime.now())}"),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                  onPressed: () {
                    auth.logout();
                    Navigator.pushNamedAndRemoveUntil(
                        context, "/login", (route) => false);
                  },
                  child: const Text("Logout")),
            )
          ],
        ),
      ),
    );
  }

  Widget usuarioData(String label, String conteudo) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      child: Row(
        children: [
          SizedBox(
            width: 80,
            child: Text(label),
          ),
          Text(conteudo),
        ],
      ),
    );
  }
}
