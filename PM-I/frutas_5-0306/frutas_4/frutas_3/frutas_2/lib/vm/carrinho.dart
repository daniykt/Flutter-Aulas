import 'package:flutter/foundation.dart';
import 'package:frutas_2/entidade/item.perdido.dart';
import 'package:frutas_2/entidade/pedido.dart';
import 'package:frutas_2/entidade/produto.dart';
import 'package:provider/provider.dart';

class Carrinho extends ChangeNotifier {
  Pedido? _pedido;

  void adicionaItem(Produto produto) {
    _pedido = pedido.adicionaItem(ItemPerdido.fromProuto(produto));

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
