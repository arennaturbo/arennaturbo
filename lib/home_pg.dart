//Importou sozinho o second_pg pq citei a classe
import 'package:exemplo_flutter/second_pg.dart';
//Como também é Material, a página precisa importar
import 'package:flutter/material.dart';

//Aqui construo minha classe HomePage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Esse retorno vai trazer nosso Scaffold da página inicial
    return Scaffold(
      //Aqui vai puxar a AppBar com o título
      appBar: AppBar(
        title: Text(">> Primeira página <<"),
      ),
      //Depois da appBar precisamos configurar o corpo do app em "body"
      //O corpo aqui leva um container com o conteúdo e no fim um FloattingActionButton
      body: Container(
        //Aqui o Center (child do body) alinha tudo o que vier depois
        child: Center(
          //O Text precisa ser filho do Center
          child: Text(
            "Texto de exemplo do nosso APP",
            //style não precisa ser child
            style: TextStyle(
              //CTRL+ESPAÇO ajuda a identificar as possibilidades
              fontSize: 22,
              fontWeight: FontWeight.bold,
              letterSpacing: 2,
            ),
          ),
        ),
      ),
      //O botão tem o que será feito (via onPressed) e depois um "filho", que é seu ícone
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //Dentro do Onpressed, estamos usando o navigator para ir pra 2ª página
          Navigator.push(
            context,
            MaterialPageRoute(builder: (BuildContext context) {
              return SegundaPagina(); //Retornando a Classe que está criada no arquivo da 2nd pagina
            }),
          );
          print("clicou");
        },
        // child: Icon(Icons.ac_unit), << Geralmente o botão leva um ícone, mas testei com texto
        child: Text("Go"),
      ),
    );
  }
}
