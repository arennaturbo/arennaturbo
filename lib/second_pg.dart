//Como também é Material, a página precisa importar
import 'package:flutter/material.dart';

//Criando o StateFul com alguns parâmetros de mesmo nome da classe
class SegundaPagina extends StatefulWidget {
  @override
  _SegundaPaginaState createState() => _SegundaPaginaState();
}

class _SegundaPaginaState extends State<SegundaPagina> {
  //Criando uma variável global para o contador
  var count = 0;

  @override
  Widget build(BuildContext context) {
    //Aqui está o Scaffold da segunda página
    return Scaffold(
      appBar: AppBar(
        title: Text(">> Segunda página <<"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            //Quando é Row precisa ser children
            children: [
              ElevatedButton(
                onPressed: () {
                  //Como a ação do botão mexe na tela, ele puxa o setState
                  setState(() {
                    //Jogando o incremento na variável
                    count++;
                  });
                  //gerando log
                  print("Clicou");
                },
                //o filho aqui é o ícone do botão
                child: Icon(Icons.exposure_plus_1_outlined),
              ),
              SizedBox(width: 12), //Só pra dar um espacinho
              //Num Text que está no children, é só puxar via style: TextStyle pra mexer no estilo
              Text(
                "$count",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(width: 12), //Só pra dar um espacinho
              ElevatedButton(
                onPressed: () {
                  //Como a ação do botão mexe na tela, ele puxa o setState
                  setState(() {
                    //Jogando o decremento na variável
                    count--;
                  });
                  //gerando log
                  print("Clicou");
                },
                //o filho aqui é o ícone do botão
                child: Icon(Icons.exposure_minus_1_outlined),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        //Para fazer a página voltar é mais fácil. Dentro do pop basta puxar o contexto
        onPressed: () {
          Navigator.pop(context);
        },
        //Esse filho do floataction indica o ícone de voltar dentro do botão
        child:
            //Icon(Icons.arrow_back_ios),
            Text("Back"),
      ),
    );
  }
}
