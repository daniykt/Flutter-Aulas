import 'package:cinemameu/app.dart';
import 'package:cinemameu/vm/cinema_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Define um widget chamado 'Provedor', que é um widget sem estado (StatelessWidget)
class Provedor extends StatelessWidget {
  // Construtor da classe 'Provedor', que recebe uma chave opcional
  const Provedor({super.key});

  // Método 'build' que constrói a interface do usuário do widget
  @override
  Widget build(BuildContext context) {
    // Retorna um 'MultiProvider' que fornece múltiplos providers para a árvore de widgets
    return MultiProvider(
      // Define a lista de providers
      providers: [
        // Adiciona o provider de 'CinemaViewModel' usando o método estático 'novo'
        CinemaViewModel.novo(),
      ],
      // Define o widget filho que terá acesso aos providers
      child: const Aplicacao(),
    );
  }
}
