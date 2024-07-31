import 'package:flutter/material.dart';
import 'package:frutas_2/entidade/item.perdido.dart';
import 'package:frutas_2/util/moeda.dart';
import 'package:frutas_2/vm/carrinho.dart';
import 'package:frutas_2/vm/catalogo.dart';
import 'package:provider/provider.dart';

class CarrinhoPage extends StatelessWidget {
  const CarrinhoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final carrinho = Provider.of<Carrinho>(context);
    final catagolo = Provider.of<Catagolo>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            item(context, ItemPerdido.fromProuto(catagolo.produtos[0])),
            SizedBox(
              width: double.maxFinite,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Pagar: R\$ XX,XX"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Método
  //Colocando um botão
  Widget item(BuildContext context, ItemPerdido item) {
    return Material(
      elevation: 5,
      child: Container(
        margin: const EdgeInsets.only(left: 8, right: 8, top: 4, bottom: 4),
        padding: const EdgeInsets.all(8),
        width: double.maxFinite,
        child:  Row(
          children: [
            Image.network(
              item.produto.foto,
              height: 56,
              width: 56,
            ),
            Column(
              children: [
                Text(item.nome),
                Row(
                  children: [
                    Text("${item.quantidade}"),
                  const  Text("X"),
                  Text(formataMoeda(item.preco)),
                  Text(formataMoeda(item.preco * item.quantidade)),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
