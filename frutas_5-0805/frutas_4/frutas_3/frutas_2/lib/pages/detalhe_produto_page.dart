import 'package:flutter/material.dart';
import 'package:frutas_2/util/moeda.dart';
import 'package:frutas_2/vm/catalogo.dart';
import 'package:provider/provider.dart';

class DetalheProdutoPage extends StatelessWidget {
  const DetalheProdutoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = ModalRoute.of(context)?.settings.arguments;

    final veioParametro = arg != null;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Detalhe do Produto"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: veioParametro ? body(context, arg as String) : bodyEmpety(),
    );
  }

  Widget bodyEmpety() {
    return const Center(
      child: Text("Não foi recebido nenhum parâmetro"),
    );
  }

  Widget body(BuildContext context, String idproduto) {
    final temaTexto = Theme.of(context).textTheme;

    final catagolo = Provider.of<Catagolo>(context);
    final produto = catagolo.findById(idproduto);

    return Column(
      children: [
        Center(
          child: Image.network(
            produto.foto,
            width: 200,
            height: 250,
          ),
        ),
        Text(
          produto.nome,
          style: temaTexto.titleLarge,
        ),
        Text(
          produto.categoria,
          style: temaTexto.titleMedium,
        ),
        Text(produto.estoque.toString()),
        Text(formataMoeda(produto.preco)),
      ],
    );
  }
}
