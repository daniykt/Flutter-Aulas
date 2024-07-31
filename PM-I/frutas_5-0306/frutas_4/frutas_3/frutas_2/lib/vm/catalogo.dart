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
// Parte d código que mostra a quatidade maior primeiro na lista
  Produto findByMaiorEstoque() {
    produtos.sort((a, b) => b.estoque.compareTo(a.estoque));
    return produtos.first;
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
