import 'package:cinemameu/entidade/filme.dart';
import 'package:flutter/material.dart';

class FilmeItem extends StatelessWidget {
  final Filme filme;

  const FilmeItem({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(),
      child: Material(
        elevation: 5,
        child: Text(filme.titulo),
      ),
    );
  }
}
