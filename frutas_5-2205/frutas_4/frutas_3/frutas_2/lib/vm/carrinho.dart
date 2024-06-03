import 'package:flutter/foundation.dart';
import 'package:frutas_2/entidade/item.perdido.dart';
import 'package:frutas_2/entidade/pedido.dart';
import 'package:frutas_2/entidade/produto.dart';
import 'package:frutas_2/repositorio/repositorio_produto.dart';
import 'package:provider/provider.dart';

class Carrinho extends ChangeNotifier {
  //chamando o repositorioProduto
  final _repositorioProduto = RepositorioProduto();

  Pedido? _pedido;

  void adicionaItem(Produto produto) {
    final p = produto.baixarEstoque(1);
    _pedido = pedido.adicionaItem(ItemPerdido.fromProuto(produto));
    //Aqui fazendo a mudança
    _repositorioProduto.uptade(p.id, p);

    notifyListeners();
  }

  Pedido get pedido {
    _pedido ??= Pedido.fromCliente("Anônimo");

    return _pedido!;
  }

  static ChangeNotifierProvider<Carrinho> create() => ChangeNotifierProvider(
        create: (_) => Carrinho(),
      );
}
