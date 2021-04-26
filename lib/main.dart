import 'package:flutter/material.dart';
import 'package:projeto_restaurante_flutter/cadastro.dart';
import 'package:projeto_restaurante_flutter/cardapio.dart';
import 'package:projeto_restaurante_flutter/confirmacaopedido.dart';
import 'package:projeto_restaurante_flutter/login.dart';
import 'package:projeto_restaurante_flutter/marmitafit.dart';
import 'package:projeto_restaurante_flutter/marmitatrad.dart';
import 'package:projeto_restaurante_flutter/bebidas.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Sabor & Gourmet',

    home: PaginaLogin(),
    
    routes: {
      '/home': (context) => PaginaLogin(),
      '/cadastro': (context) => Cadastro(),
      '/cardapio': (context) => Cardapio(''),
      '/bebidas' : (context) => Bebidas(),
      '/marmitatrad' : (context) => MarmitaTradicional(),
      '/marmitafit' : (context) => MarmitaFit(),
      '/confpedido' : (context) => ConfirmacaoPedido(),
    },
  ));
}
