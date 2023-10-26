import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';


TextEditingController _comentarioController = TextEditingController();

  List<Comentario> _comentarios = [
    Comentario('Usuário 1', 'Excelente livro! Recomendo.'),
    Comentario('Usuário 2', 'História fascinante.'),
    Comentario('Usuário 3', 'Gostei muito. Vale a pena ler.'),
  ];

class comentariosView extends StatelessWidget {
  const comentariosView({super.key});

  @override


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "Avaliações - O Espelho"),
      endDrawer: menuVertical(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'O Espelho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 24),


            Expanded(
              child: ListView.builder(
                itemCount: _comentarios.length,
                itemBuilder: (context, index) {
                  return itemComentario(_comentarios[index]);
                },
              ),
            ),
            Comentarios(context),
            SizedBox(height: 16),
  
          ],
        ),
      ),
    );
  }

Widget itemComentario(Comentario comentario) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(comentario.userName),
        subtitle: Text(comentario.text),
      ),
    );
  }


  Widget Comentarios(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          controller: _comentarioController,
          decoration: InputDecoration(
            labelText: 'Adicione um comentário...',
          ),
        ),
        SizedBox(height: 8),
        ElevatedButton(
          onPressed: () {
            addComentario(context);
          },
          child: Text('Adicionar Comentário'),
        ),
      ],
    );
  }

  void addComentario(BuildContext context) {
    
    String newComentario = _comentarioController.text;
    if (newComentario.isNotEmpty) {
      Comentario comentario = Comentario('Novo Usuário', newComentario);
        _comentarios.add(comentario);
        _comentarioController.clear();
        Navigator.of(context).pushNamedAndRemoveUntil("comentarios", (route) => false);
    }
  }
}

class Comentario {
  final String userName;
  final String text;

  Comentario(this.userName, this.text);
}
