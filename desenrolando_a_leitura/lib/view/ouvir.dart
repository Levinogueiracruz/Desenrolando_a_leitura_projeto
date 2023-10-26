import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';


class ouvirView extends StatelessWidget {
  const ouvirView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context, "Audiobook"),
      endDrawer: menuVertical(),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 200,
              backgroundImage: NetworkImage("https://m.media-amazon.com/images/I/71N52RipISL._SY466_.jpg"),

            ),
            SizedBox(height: 16),
            Text(
              'O Espelho',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
  
            SizedBox(height: 16),

            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.fast_rewind,size: 50),
                    onPressed: () {
      
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.pause,size: 50),
                    onPressed: () {
                    
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.fast_forward,size: 50),
                    onPressed: () {
                    
                    },
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
