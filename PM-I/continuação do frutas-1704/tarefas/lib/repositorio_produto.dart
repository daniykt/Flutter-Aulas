import 'package:tarefas/produto.dart';

class RepositorioProduto {
  List<Produto> select() {
    return <Produto>[
      Produto(nome: "Abacate", categoria: "Fruta"),
      Produto(nome: "Abacaxi", categoria: "Fruta"),
      Produto(nome: "Uva", categoria: "Fruta"),
      Produto(nome: "Manga", categoria: "Fruta"),
      Produto(nome: "Melancia", categoria: "Fruta"),
      Produto(nome: "Tomate", categoria: "Fruta"),
      Produto(nome: "Alface", categoria: "Hortaliça"),
      Produto(nome: "Rucula", categoria: "Verdura"),
    ];
  }
}
