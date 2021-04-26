import 'package:flutter/material.dart';
import 'package:projeto_restaurante_flutter/confirmacaopedido.dart';

class MarmitaFit extends StatefulWidget {
  @override
  _MarmitaFitState createState() => _MarmitaFitState();
}

class _MarmitaFitState extends State<MarmitaFit> {
  var opescolhida2 = 'Grande';
  var opescolhida = 'Sem Talher';

  bool ckarroz = false;
  bool ckfeijao = false;
  bool ckbife = false;
  bool ckcouve = false;
  bool ckfarofa = false;
  bool ckbatata = false;
  bool ckovo = false;

  var _count = 1;
  var _preco = 22.00;
  var _total = 22.00;

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
          title: Text('Marmita Fitness'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/images/MarmitaFit.png'))),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Text(
                  'Acompanha',
                  style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              CheckboxListTile(
                title: Text(
                  'Arroz Integral',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                    'Arroz integral da melhor qualidade refogado no alho.'),
                value: ckarroz,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckarroz = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Feijão',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Feijão da melhor qualidade refogado no alho'),
                value: ckfeijao,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckfeijao = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Filé de frango grelhado',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Filé de frango grelhado com tempero da casa'),
                value: ckbife,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckbife = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Chicória',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Chicória cortada em tiras '),
                value: ckcouve,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckcouve = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Ratatouille em cubos',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Ratatouille em cubos com legumes selecionados'),
                value: ckfarofa,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckfarofa = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Batata Doce',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Batata doce assada com alecrim, azeite e alho'),
                value: ckbatata,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckbatata = value;
                  });
                },
              ),
              CheckboxListTile(
                title: Text('Carne Moída',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text('Carne moída com cebola em cubos'),
                value: ckovo,
                activeColor: Colors.green[600],
                onChanged: (bool value) {
                  setState(() {
                    print(value);
                    ckovo = value;
                  });
                },
              ),
              Divider(
                thickness: 2,
                color: Colors.green[600],
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Text(
                  'Talheres descartaveis',
                  style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Colors.green[600],
                      value: 'Com Talher',
                      groupValue: opescolhida,
                      onChanged: (String valor) {
                        setState(() {
                          opescolhida = valor;
                        });
                        print("Opcao escolhida: " + opescolhida);
                      },
                    ),
                    Text('Sim'),
                    Radio(
                      activeColor: Colors.green[600],
                      value: 'Sem Talher',
                      groupValue: opescolhida,
                      onChanged: (String valor) {
                        setState(() {
                          opescolhida = valor;
                        });
                        print("Opcao escolhida: " + valor);
                      },
                    ),
                    Text('Não'),
                  ],
                ),
              ),
              Divider(
                thickness: 2,
                color: Colors.green[600],
              ),
              Container(
                margin: EdgeInsets.all(12),
                child: Text(
                  'Tamanho',
                  style: TextStyle(
                      color: Colors.green[600],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Radio(
                      activeColor: Colors.green[600],
                      value: 'Pequena',
                      groupValue: opescolhida2,
                      onChanged: (String valor) {
                        setState(() {
                          opescolhida2 = valor;
                          this._preco = 18.0;
                          this._total = 18.0;
                          this._count = 1;
                        });
                        print("Opcao escolhida: " + opescolhida2);
                      },
                    ),
                    Text('Pequena'),
                    Radio(
                      activeColor: Colors.green[600],
                      value: 'Média',
                      groupValue: opescolhida2,
                      onChanged: (String valor) {
                        setState(() {
                          opescolhida2 = valor;
                          this._preco = 20.0;
                          this._total = 20.0;
                          this._count = 1;
                        });
                        print("Opcao escolhida: " + valor);
                      },
                    ),
                    Text('Média'),
                    Radio(
                      activeColor: Colors.green[600],
                      value: 'Grande',
                      groupValue: opescolhida2,
                      onChanged: (String valor) {
                        setState(() {
                          opescolhida2 = valor;
                          this._preco = 22.0;
                          this._total = 22.0;
                          this._count = 1;
                        });
                        print("Opcao escolhida: " + valor);
                      },
                    ),
                    Text('Grande'),
                  ],
                ),
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
            ],
          ),
        ))));
  }
}
