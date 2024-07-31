import 'package:cinemameu/entidade/cinema.dart';
import 'package:cinemameu/repositorio/repositorio_cinema.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
class CinemaViewModel extends ChangeNotifier {
  // Declara uma lista de cinemas que será inicializada posteriormente
  late List<Cinema> cinemas;

  // Método para usar uma lista de cinemas e notificar ouvintes sobre mudanças
  CinemaViewModel useLista(List<Cinema> cinemas) {
    // Atribui a lista de cinemas à variável da classe
    this.cinemas = cinemas;
    // Notifica ouvintes que a lista de cinemas foi atualizada
    notifyListeners();
    // Retorna a instância atual de 'CinemaViewModel'
    return this;
  }

  // Método estático para criar um novo 'ChangeNotifierProvider' para 'CinemaViewModel'
  static ChangeNotifierProvider<CinemaViewModel> novo() => 
      ChangeNotifierProvider(
        // Cria uma instância de 'CinemaViewModel' e a inicializa com a lista de cinemas do repositório
        create: (_) => CinemaViewModel().useLista(RepositorioCinema().select()),
      );
}
