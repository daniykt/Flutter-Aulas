import 'package:cinemameu/componentes/cinema_item.dart';
import 'package:cinemameu/vm/cinema_vm.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Define um widget chamado 'CinemaPage', que é um widget sem estado (StatelessWidget)
class CinemaPage extends StatelessWidget {
  // Construtor da classe 'CinemaPage', que recebe uma chave opcional
  const CinemaPage({super.key});

  // Método 'build' que constrói a interface do usuário do widget
  @override
  Widget build(BuildContext context) {
    // Obtém a instância do 'CinemaViewModel' do Provider
    final vm = Provider.of<CinemaViewModel>(context);
    // Obtém a lista de cinemas do ViewModel
    final cinemas = vm.cinemas;

    return Scaffold(
      // AppBar que contém o título "Cinemas" e define a cor de fundo baseada no tema do contexto
      appBar: AppBar(
        title: const Text("Cinemas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      // Corpo do Scaffold que contém uma ListView.builder para construir a lista de cinemas
      body: ListView.builder(
        // Define o número de itens na lista como o comprimento da lista de cinemas
        itemCount: cinemas.length,
        // Constrói cada item da lista usando um 'CinemaItem'
        itemBuilder: (context, index) => GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pushNamed(context, "/filme"),
          child: CinemaItem(
            cinema: cinemas[index], // Passa o cinema atual para o 'CinemaItem'
          ),
        ),
      ),
    );
  }
}
