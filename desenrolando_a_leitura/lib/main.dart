import 'package:desenrolando_a_leitura/view/audibooks.dart';
import 'package:desenrolando_a_leitura/view/cadastro.dart';
import 'package:desenrolando_a_leitura/view/codigo.dart';
import 'package:desenrolando_a_leitura/view/comentarios.dart';
import 'package:desenrolando_a_leitura/view/favoritos.dart';
import 'package:desenrolando_a_leitura/view/inicio.dart';
import 'package:desenrolando_a_leitura/view/leitura.dart';
import 'package:desenrolando_a_leitura/view/livro.dart';
import 'package:desenrolando_a_leitura/view/login.dart';
import 'package:desenrolando_a_leitura/view/ouvir.dart';
import 'package:desenrolando_a_leitura/view/recuperasenha.dart';
import 'package:desenrolando_a_leitura/view/sobre.dart';
import 'package:flutter/material.dart';
import "package:device_preview/device_preview.dart";

void main() {
  runApp(
    DevicePreview(
      enabled: true,
      builder: (context) => MaterialApp(
        useInheritedMediaQuery: true,
        debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login': (context) => loginView(),
          'cadastro': (context) => cadastroView(),
          'recuperasenha': (context) => recuperasenhaView(),
          'code': (context) => codigoView(),
          'sobre': (context) => sobreView(),
         'inicio': (context) => inicioView(), 
          'favoritos': (context) => favoritoView(),
          'audiobooks': (context) => audiobooksView(),
          'livro':(context) => livroView(),
          'leitura':(context) => leituraView(),
          'ouvir':(context) => ouvirView(),
          'comentarios': (context) => comentariosView()
        },
      ),
    ),
  );
}
