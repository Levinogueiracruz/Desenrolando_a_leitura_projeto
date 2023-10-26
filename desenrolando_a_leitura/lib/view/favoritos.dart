import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:flutter/material.dart';
final GlobalKey<ScaffoldState> scaffoldDrawer = GlobalKey<ScaffoldState>();

class favoritoView extends StatelessWidget {
  const favoritoView({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: menu(context,"Favoritos"),
      endDrawer: menuVertical(),
      body: Column(
        children: [
         SizedBox(height: 50,),
          Expanded(
            child: GridView.builder(
              itemCount: 1,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
  
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
              ),
              itemBuilder: (context, index) {              
                return GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'livro'),
                  
                  child: InkWell(
                    mouseCursor: SystemMouseCursors.click,
                    child: Card(
                    
                      child: Center(

                        child: Image.network("https://m.media-amazon.com/images/I/71N52RipISL._SY466_.jpg"),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}



   Widget ItemCard(List<String> items, int index, Function(String) onTap) {
    return Card(
      child: ListTile(
        title: Text(items[index]),
        onTap: () => onTap(items[index]),
      ),
    );
  }

