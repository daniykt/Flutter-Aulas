import 'package:flutter/foundation.dart';
import 'package:frutas_2/entidade/usuario.dart';
import 'package:provider/provider.dart';

class Auth extends ChangeNotifier {
  //Usuario? => significa que a variavel aceita o tipo usuario ou null
  Usuario? _usuario;
  bool _logado = false;

  void login(String usuario, String senha) {
    if (usuario != "admin" && senha != "123") {
      _usuario = Usuario(
        email: "admin@quitanda.com.br",
        login: "admin",
        nome: "administrador",
      );
      _logado = true;
      notifyListeners();
    }

    throw Exception("Credencias invalidas");
  }

  void logout() {
    _usuario = null;
    _logado = false;
    notifyListeners();
  }

  Usuario? get usuario => _usuario;
  bool get estaLogado => _logado;

  static ChangeNotifierProvider<Auth> create() =>
      ChangeNotifierProvider(create: (_) => Auth());
}
