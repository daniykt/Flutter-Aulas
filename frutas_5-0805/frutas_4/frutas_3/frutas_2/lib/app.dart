import 'package:flutter/material.dart';
import 'package:frutas_2/pages/carrinho._page.dart';
import 'package:frutas_2/pages/detalhe_produto_page.dart';
import 'package:frutas_2/pages/home_page.dart';
import 'package:frutas_2/pages/login_page.dart';
import 'package:frutas_2/util/tema.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: temaPadrao(),
      routes: {
        "/login": (context) => const LoginPage(),
        "/": (context) => const HomePage(),
        "/detail": (context) => const DetalheProdutoPage(),
        "/carrinho": (context) => const CarrinhoPage(),
      },
      initialRoute: "/login",
      debugShowCheckedModeBanner: false,
    );
  }
}
