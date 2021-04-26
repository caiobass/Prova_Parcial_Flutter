import 'package:flutter/material.dart';

class ConfirmacaoPedido extends StatefulWidget {
  @override
  _ConfirmacaoPedidoState createState() => _ConfirmacaoPedidoState();
}

class _ConfirmacaoPedidoState extends State<ConfirmacaoPedido> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[600],
          title: Text('Carrinho'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Image.asset(
              'assets/images/manutencao1.png',
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: Text(
                'Pagina em manutenção',
                style: TextStyle(
                    color: Colors.green[600],
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ));
  }
}
