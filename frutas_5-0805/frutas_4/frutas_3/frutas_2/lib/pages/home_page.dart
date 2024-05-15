import 'package:flutter/material.dart';
import 'package:frutas_2/componentes/produto_item_list.dart';
import 'package:frutas_2/vm/catalogo.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    //na linha abaixo a gente esta pedindo um catagolo gerenciado
    //para o provider. A partir de agora, toda mudança no Catagolo
    //vai causar uma atualização aqui
    final catagolo = Provider.of<Catagolo>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/perfil"),
            icon: const Icon(Icons.person),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/carrinho"),
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: ListView.separated(
        itemCount: catagolo.produtos.length,
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(
            context,
            "/detail",
            arguments: catagolo.produtos[index].id,
          ),
          child: ProdutoItemList(
            produto: catagolo.produtos[index],
          ),
        ),
        separatorBuilder: (context, index) => const Divider(),
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}
