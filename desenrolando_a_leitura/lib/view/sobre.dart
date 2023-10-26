import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';

class sobreView extends StatelessWidget {
  sobreView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "Sobre"),
      endDrawer: menuVertical(),
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Padding(
        padding: EdgeInsets.only(top: 0),
        child: ListView(
          children: [
            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Text("Tema",
              style: TextStyle(
                fontSize: 30
              ),
              
              ),
             
            ),
            Padding(padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
              child: Text('Aplicativo dedicado as obras do escritor brasileiro Machado de Assis.',
              style: TextStyle(
                fontSize: 20
              ),
              ) ,
               
            ),
            
            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Text("Objetivo",
              style: TextStyle(
                fontSize: 30
              ),
              
              ),
             
            ),
            Padding(padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
              child: Text('Promover a leitura das obras de Machado de Assis por meio da criação de uma plataforma digital acessível e intuitiva',
              style: TextStyle(
                fontSize: 20
              ),
              ) ,
               
            ),

            Padding(padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 10),
              child: Text("Desenvolvedores",
              style: TextStyle(
                fontSize: 30
              ),
              
              ),
             
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
                        child: Text('Levi',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        ) ,
                         
                      ),
                      Image.asset("lib/assets/levi.png",width:180,height: 180,),
                    ],
                  ),
Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 0, left: 20, right: 20, bottom: 10),
                        child: Text('Levi',
                        style: TextStyle(
                          fontSize: 20
                        ),
                        ) ,
                         
                      ),
                      Image.asset("lib/assets/bett.png",width:180,height: 180),
                    ],
                  ),
                ],
              ),

            )

          ],
        ),
      ),
    );
  }
}