import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:frutas_2/componentes/produto_item_list.dart';
import 'package:frutas_2/vm/carrinho.dart';
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
    final carrinho = Provider.of<Carrinho>(context);

    int quantidade = carrinho.pedido.quantidade;

    SchedulerBinding.instance.addPostFrameCallback((_) {
      //e chamar aqui o findByMaiorEstoque que está no catagolo
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
            content: Text("Que tal comprar: ${catagolo.findByMaiorEstoque()}")),
      );
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        actions: [
          Badge(
            label: Text("$quantidade"),
            isLabelVisible: quantidade > 0,
            alignment: Alignment.bottomLeft,
            child: IconButton(
              onPressed: () => Navigator.pushNamed(context, "/carrinho"),
              icon: const Icon(Icons.shopping_cart),
            ),
          ),
          IconButton(
            onPressed: () => Navigator.pushNamed(context, "/perfil"),
            icon: const Icon(Icons.person),
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
