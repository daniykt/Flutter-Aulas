import 'package:cinemameu/entidade/cinema.dart';
import 'package:flutter/material.dart';

// Define um widget chamado 'CinemaItem', que é um widget sem estado (StatelessWidget)
class CinemaItem extends StatelessWidget {
  // Declara uma variável final do tipo 'Cinema' chamada 'cinema'
  final Cinema cinema;

  // Construtor da classe 'CinemaItem', que recebe uma chave opcional e um objeto 'cinema' obrigatório
  const CinemaItem({
    super.key, // Chave opcional que pode ser usada para identificar o widget
    required this.cinema, // Parâmetro obrigatório que deve ser passado ao criar um 'CinemaItem'
  });

  // Método 'build' que constrói a interface do usuário do widget
  @override
  Widget build(BuildContext context) {
    return Container(
      // Define uma margem de 5 pixels em torno do container
      margin: const EdgeInsets.all(5),
      child: Material(
        // Define uma elevação de 5 pixels para o efeito de sombra
        elevation: 5,
        // Exibe o nome do cinema dentro de um widget de texto
        child: Text(cinema.nome),
      ),
    );
  }
}
