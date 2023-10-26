// ignore_for_file: prefer_const_constructors, camel_case_types, must_be_immutable, use_key_in_widget_constructors, avoid_renaming_method_parameters, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:desenrolando_a_leitura/view/login.dart';

class codigoView extends StatelessWidget {
  codigoView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController codecon = TextEditingController();

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
                        text: 'Digite  o codigo enviado ao seu e-mail',
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
              child: campovazio("_ _ _ _ _ _", codecon),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'consenha');
                      
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(50.0),
                          ),
                      minimumSize: Size(20, 50),
                      ),
                      
                      child: Text('Confirmar Codigo',
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