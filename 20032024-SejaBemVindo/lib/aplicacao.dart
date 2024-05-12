import 'package:aula_20_03_2024/menu_page.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/", //estabelece um lista de rotas disponiveis
      routes: { //rotas | estabelece uma lista de rotas disponiveis no sistema
        "/": (_) => const HomePage(),
        "/menu": (_) => const MenuPage(), 
      },
    );
  }
}
