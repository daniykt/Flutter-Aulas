import 'package:flutter/foundation.dart';
import 'package:frutas_2/entidade/produto.dart';
import 'package:frutas_2/repositorio/repositorio_produto.dart';
import 'package:provider/provider.dart';

class Catagolo extends ChangeNotifier {
  final List<Produto> produtos;

  Catagolo({
    required this.produtos,
  });
  Produto findById(String id) {
    return produtos.where((p) => p.id == id).first;
  }

  static ChangeNotifierProvider<Catagolo> create(
      RepositorioProduto repositorio) {
    return ChangeNotifierProvider(
      create: (_) => Catagolo(
        produtos: repositorio.select(),
      ),
    );
  }
}
