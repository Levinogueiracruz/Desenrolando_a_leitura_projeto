import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';



class audiobooksView extends StatelessWidget {
  const audiobooksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "AudioBooks"),
      endDrawer: menuVertical(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Obras de Machado de Assis',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
  itemCount: 3,
              itemBuilder: (context, index) {
                return GestureDetector(
                  
                  onTap:() => Navigator.pushNamed(context,"ouvir"),
                  child: InkWell(
                    mouseCursor: SystemMouseCursors.click,
                    child: AudiobookCard(
                      title: 'O espelho',
                      coverImage: 'https://m.media-amazon.com/images/I/71N52RipISL._SY466_.jpg',
                    ),
                  ),
                );
              },
            ),
          ),
          ],
        ),
      ),
    );
  }
}


class AudiobookCard extends StatelessWidget {
  final String title;
  final String coverImage;

  const AudiobookCard({
    required this.title,
    required this.coverImage,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              coverImage,
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
