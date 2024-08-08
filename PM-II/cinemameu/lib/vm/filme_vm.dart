import 'package:cinemameu/entidade/filme.dart';
import 'package:cinemameu/repositorio/repositorio_filme.dart';
import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';

class filmeViewModel extends ChangeNotifier {
  late List<Filme> filmes;

  filmeViewModel uselista(List<Filme> filmes) {
    this.filmes = filmes;
    notifyListeners();
    return this;
  }

  static ChangeNotifierProvider<filmeViewModel> novo() =>
      ChangeNotifierProvider(
        create: (_) => filmeViewModel().uselista(RepositorioFilme().select()),
      );
}
