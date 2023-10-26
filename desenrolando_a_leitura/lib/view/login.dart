
import 'package:desenrolando_a_leitura/view/cadastro.dart';
import 'package:flutter/material.dart';
import 'package:collection/collection.dart';


class usuarios{ 
  String? email;
  String? senha;

  usuarios( this.email, this.senha);
}

List<usuarios> usuariosCadastrados= [];

void Login(BuildContext context,String email, String senhna){ 

    

  usuarios? usuariosLog = usuariosCadastrados.firstWhereOrNull  (
      (u) => u.email == email && u.senha == senhna,
    );
   if (usuariosLog == null) {
      exibirDialogo(context, "Erro de login", "Email ou senha incorretos","Ok");
      return;
    }
    else{
      Navigator.of(context).pushNamedAndRemoveUntil('inicio',(route) => false);
      print("ok");
    }
}



class loginView extends StatelessWidget {
  loginView({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController logincontroller = TextEditingController();
    TextEditingController senhacontroller = TextEditingController();

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 219, 219, 219),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(padding: EdgeInsets.only(top: 10),
                child: Text(
                  "Desenrolando\n           a\n      Leitura",
                style: TextStyle(
                  
                  color: Colors.black,
                  fontSize: 30,
                    ),
                  ),
                ),
                Image.asset('lib/assets/logo.jpg',width: 100,height: 150,),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("E-mail", logincontroller),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20, left: 20, right: 20),
              child: campovazio("Senha", senhacontroller),
            ),
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                child: botao(logincontroller, senhacontroller, "Login")),
            
            Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "cadastro");
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Não é um usuário?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                )
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "recuperasenha");
                    },
                    child: RichText(
                      text: TextSpan(
                        text: 'Esqueceu a senha?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Color.fromARGB(255, 0, 0, 0),
                          fontSize: 15,
                          fontWeight: FontWeight.w200,
                        ),
                      ),
                    ),
                )
              ),
              Padding(padding: EdgeInsets.all(20))
            
            
          ],
        ),
      ),
    );
  }
}
//cria botão
class botao extends StatelessWidget {
  botao(this.lcon, this.scon, this.nbotao);

  TextEditingController lcon = TextEditingController();
  TextEditingController scon = TextEditingController();
  final String nbotao;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          String email = lcon.text;
          String senha = scon.text;
          Login(context,email,senha);

          
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

class campovazio extends StatelessWidget {
  campovazio(this.texto, this.tcon);

  TextEditingController tcon = TextEditingController();
  final String texto;

  @override
  Widget build(BuildContext build) {
    return Opacity(
      opacity: 0.9,
      child: TextFormField(
        controller: tcon,
        decoration: InputDecoration(
          hintText: texto,
          filled: true,
          fillColor: Color.fromARGB(0, 0, 0, 0),
          
        ),
      ),
    );
  }
}



AppBar barra(BuildContext context){
  return AppBar(
          backgroundColor: Color.fromARGB(100, 155, 154, 154), 
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
            
              Navigator.pop(context);
            },
          ));
}


internetpop(context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Internet Indisponivel'),
          actions: [
            TextButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('De volta online.'),
                  ),
                );
                Navigator.pushNamed(context, "inicio");
              },
              
              child: Text('Tentar Novamente'),
            ),
          ],
        );
      },
    );
  }