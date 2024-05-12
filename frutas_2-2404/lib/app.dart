import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frutas_2/pages/home_page.dart';

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
      ),
      routes: {
        "/": (context) => const HomePage(),
      },
      initialRoute: "/",
    );
  }
}
