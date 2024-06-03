class Produto {
  final String id;
  final String nome;
  final String foto;
  final String categoria;
  final int estoque;
  final double preco;

  Produto({
    required this.id,
    required this.nome,
    required this.foto,
    required this.categoria,
    required this.estoque,
    required this.preco,
  });
//atributo
  bool get temEstoque => estoque > 0;
//método
  bool podeVender(int quantidade) {
    return estoque >= quantidade;
  }
//Fazendo com que quando fique sem estoque dar uma mensagem
  Produto baixarEstoque(int quantidade) {
    if (podeVender(quantidade)) {
      //a exceção
      throw Exception("Estoque indisponível!");
    }
//e o returno
    return Produto(
        id: id,
        nome: nome,
        foto: foto,
        categoria: categoria,
        estoque: estoque - quantidade,
        preco: preco);
  }
}
