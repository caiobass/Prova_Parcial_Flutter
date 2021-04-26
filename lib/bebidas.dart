import 'package:flutter/material.dart';
import 'package:projeto_restaurante_flutter/confirmacaopedido.dart';

class Bebidas extends StatefulWidget {
  @override
  _BebidasState createState() => _BebidasState();
}

class _BebidasState extends State<Bebidas> {

  bool ckcoca = false;
  bool ckguarana = false;
  bool cksprite = false;

  var _count = 1;
  var _preco = 5.0;
  var _total = 5.0;

  contadorMenos() => {
        this._count == 1
            ? ''
            : setState(() {
                this._count--;
                this._total -= this._preco;
              })
      };

  contadorMais() => {
        setState(() {
          this._count++;
          this._count == 1 ? '' : this._total += this._preco;
        })
      };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Bebidas'),
        centerTitle: true,
      ),
      body: ListView(children: [
        Column(children: [
          Container(
            margin: EdgeInsets.all(15),
            width: 200,
            height: 200,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/images/Bebidas.png'))),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              'Opções',
              style: TextStyle(
                  color: Colors.green[600],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          CheckboxListTile(
                title: Text(
                  'Coca-Cola',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                value: ckcoca,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckcoca = value;
                    this._preco = 5.0;
                    this._total = 5.0;
                    this._count = 1;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Guaraná Antartica',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                value: ckguarana,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckguarana = value;
                    this._preco = 5.0;
                    this._total = 5.0;
                    this._count = 1;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Sprite',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                value: cksprite,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    cksprite = value;
                    this._preco = 5.0;
                    this._total = 5.0;
                    this._count = 1;
                  });
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.green[600],
              ),
              Container(
                margin: EdgeInsets.all(20),
                width: 130,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green[600], width: 1),
                  color: Colors.green[100],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                        onPressed: this.contadorMenos,
                        icon: Icon(Icons.remove,
                            color: Colors.green[600], size: 30)),
                    Text(this._count.toString(),
                        style: TextStyle(
                            color: Colors.green[600],
                            fontWeight: FontWeight.bold,
                            fontSize: 20)),
                    IconButton(
                        onPressed: this.contadorMais,
                        icon: Icon(
                          Icons.add,
                          color: Colors.green[600],
                          size: 30,
                        )),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 17, bottom: 17),
                child: Text('R\$ ${this._total.toStringAsFixed(2)}',
                    style: TextStyle(
                        color: Colors.green[600],
                        fontSize: 25,
                        fontWeight: FontWeight.bold)),
              ),
              Divider(
                thickness: 2,
                color: Colors.green[600],
              ),
              Container(
                width: 200,
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('Adicionar ao carrinho'),
                    style: ElevatedButton.styleFrom(primary: Colors.green[600]),
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Item adicionado com sucesso.'),
                        duration: Duration(seconds: 2),
                      ));
                    }),
              ),
              Container(
                width: 200,
                height: 40,
                margin: EdgeInsets.only(top: 10),
                child: ElevatedButton(
                    child: Text('Ir para o carrinho'),
                    style: ElevatedButton.styleFrom(primary: Colors.green[600]),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (BuildContext context) =>
                                ConfirmacaoPedido(),
                          ));
                    }),
              ),

        ])
      ]),
    );
  }
}
