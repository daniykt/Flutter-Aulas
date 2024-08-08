import 'package:cinemameu/pages/cinema_page.dart';
import 'package:cinemameu/pages/filme_page.dart';
import 'package:flutter/material.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Cinemeu",
      initialRoute: "/",
      routes: {
        "/": (_) => const CinemaPage(),
        "/filme": (_) => const FilmePage(),
      },
    );
  }
}
