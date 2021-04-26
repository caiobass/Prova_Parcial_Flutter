import 'package:flutter/material.dart';
import 'package:projeto_restaurante_flutter/cadastro.dart';
import 'package:projeto_restaurante_flutter/cardapio.dart';

class PaginaLogin extends StatelessWidget {
  var usuario = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Sabor & Gourmet'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
// Imagem

          children: [
            Container(
              child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.fill,
              width: 400,
              height: 300,
            ),
            ),
            

// Login

            Container(
              width: 350,
              margin: EdgeInsets.only(
                bottom: 30,
              ),
              child: TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Insira o nome de usuário',
                  border: OutlineInputBorder(),
                ),
                controller: this.usuario,
              ),
            ),

// Senha

            Container(
                width: 350,
                margin: EdgeInsets.only(bottom: 30),
                child: TextField(
                  decoration: InputDecoration(
                    labelText: 'SENHA',
                    border: OutlineInputBorder(),
                  ),
                  obscureText: true,
                )),

// Botão Logar

            Container(
              child: ElevatedButton(
                  child: Text('LOGIN'),
                  style: ElevatedButton.styleFrom(primary: Colors.green[600]),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Cardapio(this.usuario.text),
                        ));
                  }),
            ),

            // Botão texto para para cadastrar

            SizedBox(
              height: 10,
            ),
            Container(
                height: 40,
                alignment: Alignment.center,
                child: TextButton(
                  child: Text('Ainda não é cadastrado ?'),
                  style: TextButton.styleFrom(primary: Colors.green[600]),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => Cadastro(),
                        ));
                  },
                )),
          ],
        ),
      ),

// configurando a tela info
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.info_outline),
        backgroundColor: Colors.green[600],
        onPressed: () async {
          await showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Informações sobre o aplicativo:',
                      style: TextStyle(fontSize: 20)),
                  content: SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('Tema: '),
                        Text('Aplicativo para restaurante\n'),
                        Text('Objetivo: '),
                        Text('Criar um aplicativo de gerenciamento de pedidos para o restaurante Sabor & Gourmet.\n\n'),
                        Text('Caio Hatano Basso\n'),
                        Image.asset(
                          'assets/images/perfil.png',
                          fit: BoxFit.scaleDown,
                          width: 180,
                          height: 180,
                        ),
                      ],
                    ),
                  ),
                  actions: <Widget>[
                    TextButton(
                      child: Text('Ok'),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  ],
                );
              });
        },
      ),
    );
  }
}
