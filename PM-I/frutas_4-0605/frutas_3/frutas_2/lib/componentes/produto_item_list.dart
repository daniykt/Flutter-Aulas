import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frutas_2/entidade/produto.dart';
import 'package:frutas_2/util/moeda.dart';

class ProdutoItemList extends StatelessWidget {
  final Produto produto;

  const ProdutoItemList({
    super.key,
    required this.produto,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              produto.nome,
              style: textTheme.bodyLarge,
            ),
            Text(
              produto.categoria,
              style: textTheme.bodySmall,
            ),
          ],
        ),
        Text(formataMoeda(produto.preco)),
      ],
    );
  }
}
