import 'package:flutter/material.dart';
import 'package:frutas_2/componentes/produto_item_list.dart';
import 'package:frutas_2/repositorio/repositorio_produto.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final reposotorio = RepositorioProduto();
    final produtos = reposotorio.select();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/carrinho"),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: produtos.length,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(
            context,
            "/detail",
            arguments: produtos[index],
          ),
          child: ProdutoItemList(
            produto: produtos[index],
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
