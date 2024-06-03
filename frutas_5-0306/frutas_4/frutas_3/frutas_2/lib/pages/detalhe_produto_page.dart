import 'package:flutter/material.dart';
import 'package:frutas_2/util/moeda.dart';
import 'package:frutas_2/vm/carrinho.dart';
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

    final carrinho = Provider.of<Carrinho>(context);

    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              Center(
                child: Image.network(
                  produto.foto,
                  width: 200,
                  height: 250,
                ),
              ),
              detalhe(
                "Nome",
                produto.nome,
                temaTexto.titleLarge,
              ),
              detalhe(
                "Categoria",
                produto.categoria,
                temaTexto.titleMedium,
              ),
              detalhe("Estoque", produto.estoque.toString(), null),
              detalhe("Preço", formataMoeda(produto.preco), null),
            ],
          ),
          ElevatedButton(
            onPressed: () => carrinho.adicionaItem(produto),
            child: const Text("Adicionar no Carrinho"),
          )
        ],
      ),
    );
  }

  Widget detalhe(String label, String conteudo, TextStyle? style) {
    return SizedBox(
      width: 500,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: style,
            ),
          ),
          Text(
            conteudo,
            style: style,
          )
        ],
      ),
    );
  }
}
