import 'package:flutter/material.dart';

final GlobalKey<ScaffoldState> scaffoldDrawer = GlobalKey<ScaffoldState>();

final List<String> items = List.generate(20, (index) => 'Item $index');
class inicioView extends StatelessWidget {
  const inicioView({super.key});
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
  key: scaffoldDrawer,
      appBar: menu(context,"Inicio"),
      endDrawer: menuVertical(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: 'Livro',
                border: OutlineInputBorder(),
              ),
            ),
          ),          Expanded(
            child: GridView.builder(
              itemCount: 10,
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
AppBar menu(BuildContext context,String titulo) {
   return AppBar(
    backgroundColor: Color.fromARGB(255, 219, 219, 219),
    centerTitle: true,
        title: Text(titulo,style: TextStyle(fontSize: 35,color: Colors.black), ),
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
           Builder(builder: (context) {
        return IconButton(
          onPressed: () {
            Scaffold.of(context).openEndDrawer();
          },
          icon: const Icon(
            Icons.menu,
            size: 40,
          ),
          
          color: Colors.black,
          padding: const EdgeInsets.only(right: 20),
        );
      }),
]);
}



class menuVertical extends StatelessWidget{
  @override
  Widget build(BuildContext context){
           return Container(

            width: 1000,
            height: 400,
             child: Drawer(
              backgroundColor: Color(0xFFD9D9D9),
                   child: ListView(
                     padding: EdgeInsets.zero,
                     children: <Widget>[
              Container(
                height: 150,
                child: DrawerHeader(
                  
                  decoration: BoxDecoration(
                    color: Color(0xFFD9D9D9),
                  ),
                  child: Center(
                    child: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 50,
                      ),
                    ),
                  ),
                ),
              ),
              
              Container(
                decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0), 
            ),
                child: ListTile(
                  title: Center(child: Text('Inicio')),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil("inicio", (route) => false);
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                
                decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0), 
            ),
                child: ListTile(
                  title: Center(child: Text('Favoritos')),
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil("favoritos", (route) => false);
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                
                decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0, 
              ),
              borderRadius: BorderRadius.circular(8.0), 
            ),
                child: ListTile(
                  title: Center(child: Text('AudioBooks')),
                  
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil("audiobooks", (route) => false);
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                
                decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0), 
            ),
                child: ListTile(
                  title: Center(child: Text('Sobre')),
                  onTap: () {
                  Navigator.of(context).pushNamedAndRemoveUntil("sobre", (route) => false);
                  },
                ),
              ),
                     ],
                   ),
                 ),
                 
           );

  }

}

