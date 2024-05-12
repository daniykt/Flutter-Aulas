import 'package:flutter/material.dart';
import 'package:tarefas/repositorio_produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final repositorio = RepositorioProduto();
    final produtos = repositorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Lista da quitanda"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(4),
        itemCount: produtos.length,
        itemBuilder: (context, index) => Item(
            nome: produtos[index].nome, categoria: produtos[index].categoria),

        //padding: const EdgeInsets.all(12),
        //children: const [
        // Item(
        // nome: "Abacate",
        // categoria: "Fruta",
        // ),
        // Item(nome: "Abacaxi", categoria: "Fruta"),
        // Item(
        // nome: "Maçã",
        // categoria: "Fruta",
        // ),
        // Item(
        // nome: "Pera",
        // categoria: "Fruta",
        // ),
        // Item(
        // nome: "Uva",
        // categoria: "Fruta",
        // ),
        // Item(
        // nome: "Pepino",
        // categoria: "Legume",
        // ),
        // Item(
        // nome: "Alface",
        // // categoria: "Verdura",
      ),
      // Item(
      // nome: "Tomate",
      // categoria: "Fruta",
      // ),
      // // ],

      //),
    );
  }
}

class Item extends StatelessWidget {
  final String nome;
  final String categoria;

  const Item({super.key, required this.nome, required this.categoria});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          const Padding(
            padding: EdgeInsets.all(4),
            child: Icon(
              Icons.store,
              size: 40,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                nome,
                style: textTheme.bodyLarge,
              ),
              Text(
                categoria,
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
