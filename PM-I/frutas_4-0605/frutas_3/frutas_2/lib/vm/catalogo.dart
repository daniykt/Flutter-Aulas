import 'package:flutter/foundation.dart';
import 'package:frutas_2/entidade/produto.dart';

class Catagolo extends ChangeNotifier {
  final List<Produto> produtos;

  Catagolo({
    required this.produtos,
  });
  Produto findById(String id) {
    return produtos.where((p) => p.id == id).first;
  }
}
