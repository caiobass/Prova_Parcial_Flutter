import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: Text('Cadastrar'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

//Imagem logo

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: Image.asset(
                  'assets/images/logo.png',
                  fit: BoxFit.fill,
                  width: 100,
                  height: 100,
                ),
                ),               

//Cadastrar CPF

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextFormField(
                  //keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Nome de usuário: ',
                      border: OutlineInputBorder()),
                ),
                ),
                              
// Cadastrar Nome
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Nome completo: ', border: OutlineInputBorder()),
                ),
                ),
                                
//Cadastrar Senha

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                      labelText: 'Insira sua senha: ',
                      border: OutlineInputBorder()),
                ),
                ),                                

//Cadastrar Rua

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Rua: ', border: OutlineInputBorder()),
                ),
                ),
                               
//Cadastrar Numero

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Número: ', border: OutlineInputBorder(),),
                ),
                ),              

//Cadastrar complemento

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Complemento: ', border: OutlineInputBorder()),
                ),
                ),
                               
//Cadastrar Bairro

                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Bairro: ', border: OutlineInputBorder()),
                ),
                ),

//Cadastrar Telefone                
                
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  child: TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Telefone: ', border: OutlineInputBorder()),
                ),
                ),               
                
// Botão cadastrar
            
                Container(
                  margin: EdgeInsets.only(top:5, bottom: 5),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Usuário cadastrado com sucesso.'),
                          duration: Duration(seconds: 2),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(primary: Colors.green[600]),
                    child: Text('Cadastrar')),)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
