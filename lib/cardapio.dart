import 'package:flutter/material.dart';
import 'package:projeto_restaurante_flutter/confirmacaopedido.dart';

class Cardapio extends StatefulWidget {
  String user;
  Cardapio(this.user);

  @override
  _CardapioState createState() => _CardapioState();
}

class _CardapioState extends State<Cardapio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Aqui estão suas opções: ${widget.user}'),
        backgroundColor: Colors.green[600],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green[500],
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 150,
            child: InkWell(
              splashColor: Colors.green[600],
              onTap: () {
                Navigator.pushNamed(context, '/marmitatrad');
              },
              child: Card(
                  elevation: 1,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 47),
                              child: Text(
                                'Marmita Tradicional',
                                style: TextStyle(
                                    color: Colors.green[600],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Clique para ver mais...',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.green[800])),
                          )
                        ],
                      ),
                      Flexible(
                        child: Image.asset('assets/images/MarmitaTrad.png'),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green[500],
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 150,
            child: InkWell(
              splashColor: Colors.green[600],
              onTap: () {
                Navigator.pushNamed(context, '/marmitafit');
              },
              child: Card(
                  elevation: 1,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 82),
                              child: Text(
                                'Marmita Fitness',
                                style: TextStyle(
                                    color: Colors.green[600],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Clique para ver mais...',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.green[800])),
                          )
                        ],
                      ),
                      Flexible(
                        child: Image.asset('assets/images/MarmitaFit.png'),
                      ),
                    ],
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.all(7.0),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.green[500],
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            width: double.infinity,
            height: 150,
            child: InkWell(
              splashColor: Colors.green[600],
              onTap: () {
                Navigator.pushNamed(context, '/bebidas');
              },
              child: Card(
                  elevation: 1,
                  child: Row(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              padding: EdgeInsets.only(right: 156),
                              child: Text(
                                'Bebidas',
                                style: TextStyle(
                                    color: Colors.green[600],
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Text('Clique para ver mais...',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13,
                                    color: Colors.green[800])),
                          )
                        ],
                      ),
                      Flexible(
                        child: Image.asset('assets/images/Bebidas.png'),
                      ),
                    ],
                  )),
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(left: 30,bottom: 10),
            width: 70,
            height: 70,
            child: FloatingActionButton(
              backgroundColor: Colors.green[600],
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (BuildContext context) => ConfirmacaoPedido(),
                    ));
              },
              child: Icon(
                Icons.shopping_cart,
                size: 30,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
