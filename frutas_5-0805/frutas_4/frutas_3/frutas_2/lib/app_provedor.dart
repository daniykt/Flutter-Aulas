import 'package:flutter/material.dart';
import 'package:frutas_2/app.dart';
import 'package:frutas_2/repositorio/repositorio_produto.dart';
import 'package:frutas_2/vm/catalogo.dart';
import 'package:provider/provider.dart';

class AppProvedor extends StatelessWidget {
  const AppProvedor({super.key});

  @override
  Widget build(BuildContext context) {
    //MultiProvider é um espécie de container
    //que permite ao filho ter acesso aos provedores definidos
    
    return MultiProvider(
      providers: [
        Catagolo.create(RepositorioProduto()),
      ],
      child: const Aplicacao(),
    );
  }
}