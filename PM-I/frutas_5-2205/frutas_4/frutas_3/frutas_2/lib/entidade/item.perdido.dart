import 'package:frutas_2/entidade/produto.dart';

class ItemPerdido {
  final String nome;
  final double preco;
  final int quantidade;
  final Produto produto;

  ItemPerdido._({
    required this.nome,
    required this.preco,
    required this.quantidade,
    required this.produto,
  });

  factory ItemPerdido.fromProuto(Produto produto) {
    return ItemPerdido._(
      nome: produto.nome,
      preco: produto.preco,
      quantidade: 1,
      produto: produto,
    );
  }

  factory ItemPerdido.fromProdutoEPreco(
    Produto produto,
    double preco,
    int quantidade,
  ) {
    return ItemPerdido._(
      nome: produto.nome,
      preco: preco,
      quantidade: quantidade,
      produto: produto,
    );
  }

  ItemPerdido adiciona(int quantidade) {
    if (produto.estoque >= this.quantidade + quantidade) {
      return ItemPerdido._(
          nome: nome,
          preco: preco,
          quantidade: this.quantidade + quantidade,
          produto: produto);
    }
    throw Exception("Não há estoque suficiente");
  }

  ItemPerdido remove(int quantidade) {
    if (this.quantidade - quantidade >= 0) {
      return ItemPerdido._(
          nome: nome,
          preco: preco,
          quantidade: this.quantidade - quantidade,
          produto: produto);
    }

    throw Exception("Quantidade não pode ser negativa!");
  }
}
