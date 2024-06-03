import 'package:flutter/material.dart';
import 'package:frutas_2/entidade/item.perdido.dart';

class Pedido {
  final String nomeCliente;
  final List<ItemPerdido> itens;

  Pedido._({
    required this.nomeCliente,
    required this.itens,
  });

  factory Pedido.fromCliente(String nomeCliente) {
    return Pedido._(nomeCliente: nomeCliente, itens: []);
  }

  factory Pedido.fromDB(
    String nomeCliente,
    List<ItemPerdido> itens,
  ) {
    return Pedido._(nomeCliente: nomeCliente, itens: itens);
  }

  Pedido adicionaItem(ItemPerdido item) {
    var novoItens = [...itens];
    novoItens.add(item);

    return Pedido._(
      nomeCliente: nomeCliente,
      itens: novoItens,
    );
  }

  double get total => itens
      .map((i) => i.preco * i.quantidade)
      .reduce((value, element) => value + element);

  int get quantidade => itens.isNotEmpty
  ? itens
      .map((i) => i.quantidade)
      .reduce((value, element) => value + element)
      : 0;
}
