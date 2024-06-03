import 'dart:math';
import 'package:frutas_2/entidade/produto.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();
final _random = Random();
final _db = <Produto>[
  Produto(
      id: uuid.v4().toString(),
      nome: "Melão Amarelo",
      foto: "https://api.quitandadivino.com.br/uploads/melao_1b0b490e4e.jpg",
      categoria: "Fruta",
      estoque: 0,
      preco: 6.10),
  Produto(
      id: uuid.v4().toString(),
      nome: "Morango",
      foto: "https://api.quitandadivino.com.br/uploads/morango_b81411108f.jpg",
      categoria: "Fruta",
      estoque: _random.nextInt(20),
      preco: 10.10),
  Produto(
      id: uuid.v4().toString(),
      nome: "Uva Niágara",
      foto:
          "https://api.quitandadivino.com.br/uploads/uva_niagara_69c6a0188e.jpg",
      categoria: "Fruta",
      estoque:  _random.nextInt(20),
      preco: 4.95),
  Produto(
      id: uuid.v4().toString(),
      nome: "Pera Willians",
      foto:
          "https://api.quitandadivino.com.br/uploads/pera_williams_c9851fecec.jpg",
      categoria: "Fruta",
      estoque:  _random.nextInt(20),
      preco: 3.10),
  Produto(
      id: uuid.v4().toString(),
      nome: "Melancia Baby",
      foto:
          "https://api.quitandadivino.com.br/uploads/melancia_baby_566f69fe2c.jpg",
      categoria: "Fruta",
      estoque: _random.nextInt(20),
      preco: 10.10),
];
class RepositorioProduto {

var uuid = const Uuid();
List<Produto> select() {
  return _db;
}

Produto uptade(String id, Produto produto) {
  final posicao = _db.indexWhere((p) => p.id == id);

  if (posicao > -1) {
    _db[posicao] = produto;
  }
  return produto;
  }
}
//Simulando banco de dados