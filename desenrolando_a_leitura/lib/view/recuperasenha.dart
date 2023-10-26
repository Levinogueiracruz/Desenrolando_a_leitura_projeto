// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_renaming_method_parameters, prefer_const_constructors_in_immutables

import 'package:collection/collection.dart';
import 'package:desenrolando_a_leitura/view/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:desenrolando_a_leitura/view/login.dart';

class recuperasenhaView extends StatelessWidget {
  recuperasenhaView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailcon = TextEditingController();

    TextEditingController senhacon= TextEditingController();;
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
              child: RichText(
                      text: TextSpan(
                        text: 'Digite o email para solicitar a mudança de senha',
                        style: TextStyle(
                          decorationColor:
                              Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("E-mail", emailcon),
            ),
            Padding(padding:EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("Senha", senhacon),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      
                      senha(context, emailcon.text,senhacon.text);
                      
                      
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(50.0),
                          ),
                      minimumSize: Size(20, 50),
                      ),
                      
                      child: Text('Solicitar Mudança',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                 ),
               ),
             ),
            ),
          ],
        ),
      ),
    );
  }
}

void senha(BuildContext context,String email,String senha){ 

    

  usuarios? usuariosLog = usuariosCadastrados.firstWhereOrNull  (
      (u) => u.email == email,
    );
   if (usuariosLog == null) {
      exibirDialogo(context, "Erro de Senha", "Email incorreto ou não esta cadastrado","Ok");
      
      return;
    }
    else{
      print("ok");
      trocarSenha(context, senha, email);
    }
}

void trocarSenha(BuildContext context, String senha,String email){


          int index = usuariosCadastrados.indexWhere((element) => element.email!.contains(email)); 

          print(index);
          usuariosCadastrados[index].senha= senha;
          Navigator.of(context).pushNamedAndRemoveUntil('login', (route) => false);
          exibirDialogo(context, "Sucesso", "Senha trocada com sucesso", "OK");

}