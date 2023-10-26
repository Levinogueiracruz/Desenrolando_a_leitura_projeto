import 'package:desenrolando_a_leitura/view/cadastro.dart';
import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';



class livroView extends StatelessWidget {
  const livroView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "O Espelho"),
      endDrawer: menuVertical(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.network(
                  'https://m.media-amazon.com/images/I/71N52RipISL._SY466_.jpg', 
                  height: 300,
                  width: 200,
                  fit: BoxFit.cover,
                ),
                Text(
              'O Espelho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            )
              ],
              
            ),
            
            SizedBox(height: 40),
            Text(
              'Neste conto aparece mais uma vez os temas chaves de Papéis Avulsos: ser versus parecer, desejo versus máscara, vida pública versus vida íntima. Através de uma aguda análise do comportamento humano.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 50),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'leitura');
                    },
                    style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                    child:  Text(
          'Ler Obra',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          )),
          
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'comentarios');
                    },
                    style: ButtonStyle(
                    minimumSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                    child:  Text(
          'Comentarios e avaliações',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          )),
          
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      exibirDialogo(context, "Adicionado aos favoritos", "Livro Adicionado aos favoritos", "Ok");
                    },
                    style: ButtonStyle(
                   minimumSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                    child: Text(
          'Salvar aos Favoritos',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          )),
                  ),
                  SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'ouvir');
                    },
                    style: ButtonStyle(

                    minimumSize: MaterialStateProperty.all(Size(300, 50)),
                  ),
                    child: Text(
          'Ouvir AudioBook',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w400,
            height: 0,
          )),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
