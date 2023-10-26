// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_renaming_method_parameters, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:desenrolando_a_leitura/view/login.dart';




class cadastroView extends StatelessWidget {
  cadastroView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController logincontroller = TextEditingController();
    TextEditingController nomecontroller = TextEditingController();
    TextEditingController senhacontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      appBar: barra(context),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 10,left: 85, right:50),
            child: Text(
              "Desenrolando\n           a\n      Leitura",
            style: TextStyle(
              
              color: Colors.black,
              fontSize: 30,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("E-mail", logincontroller),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("Nome Completo", nomecontroller),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("Senha", senhacontroller),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: botao(nomecontroller,senhacontroller,logincontroller,"Cadastrar" )
            ),
          ],
        ),
      ),
    );
  }
}


class botao extends StatelessWidget {
  botao(this.ncon, this.scon, this.econ , this.nbotao);

  TextEditingController ncon = TextEditingController();
  TextEditingController scon = TextEditingController();
  TextEditingController econ = TextEditingController();
  final String nbotao;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          String nome = ncon.text;
          String senha = scon.text;
          String email = econ.text;

          print(email);

  if(!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(econ.text)){
      exibirDialogo(context,"Erro de validação","Digite um email valido","OK");
      return;
  }
    if(email.isEmpty||nome.isEmpty||senha.isEmpty){
          exibirDialogo(context,"Erro de validação","Não pode haver campos vazios","OK");
          return;
        }

    
    else{
      usuariosCadastrados.add( usuarios(email,senha)  );
    Navigator.pushNamed(context, 'login');
      exibirDialogo(context, "Cadastro com sucesso", "Cadastrado com sucesso","Ok");
    }

          
        },
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(50.0),
              ),
          minimumSize: Size(20, 50),
          ),
          
          child: Text(nbotao,
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ));
  }
}

void cadastro(String email, String nome, String senha, BuildContext context){

    print(!RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$').hasMatch(email));
    
  }

Future<void> exibirDialogo(BuildContext context,String titulo, String texto, String botao) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(titulo),
          content: Text(texto),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(botao),
            ),
          ],
        );
      },
    );
  }