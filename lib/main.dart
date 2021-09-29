//A parte de cima importa o Material Package
import 'package:flutter/material.dart';
//Aqui está importando a home_pg pra poder exibir a página inicial do outro file
import 'home_pg.dart';

//A função principal sempre retorna um VOID (Padrão)
//Sempre deve haver o runApp e nesse ele puxou uma classe "MyApp()" que construímos abaixo
void main() {
  runApp(MyApp());
}

//Aqui construímos nossa classe que é um StatelessWidget que deve passar por um build
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Esse build deve retornar um MaterialApp no caso de ser um APP com Material
    //O MaterialApp deve conter seus atributos logo no início
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.red,
        primaryColorDark: Colors.black,
        accentColor: Colors.amber,
      ),
      //O Home vai puxar a classe HomePage - Construída no outro arquivo (home_pg)
      home: HomePage(),
    );
  }
}