import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/cliente/pages/cadCliente_page.dart';
import 'package:sobrerodas/modules/cliente/pages/viewCliente_page.dart';
import 'package:sobrerodas/modules/produto/pages/cadProduto_page.dart';
import 'package:sobrerodas/modules/produto/pages/viewProduto_page.dart';
import 'package:sobrerodas/modules/servico/pages/cadServico_page.dart';
import 'package:sobrerodas/modules/servico/pages/viewServico_page.dart';
import 'package:sobrerodas/modules/login/pages/login_page.dart';
import 'package:sobrerodas/modules/home/pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sobre Rodas',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}