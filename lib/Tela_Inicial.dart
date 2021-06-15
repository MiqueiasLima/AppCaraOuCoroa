import 'dart:math';

import 'package:flutter/material.dart';

import 'CaraOuCoroa.dart';

class Tela_Inicial extends StatefulWidget {
  const Tela_Inicial({Key? key}) : super(key: key);

  @override
  _Tela_InicialState createState() => _Tela_InicialState();
}

class _Tela_InicialState extends State<Tela_Inicial> {

void _telaCaraOuCoroa(){

  String resultado = "";
  List<String> opcoes = ["cara","coroa"];
  int sorteio = new Random().nextInt(2);
  resultado = opcoes[sorteio];

  if(resultado == "cara"){
    resultado = "imagens/moeda_cara.png";
  }else{
    resultado = "imagens/moeda_coroa.png";
  }

  Navigator.push(context, MaterialPageRoute(builder: (context) => CaraOuCoroa(resultado:resultado)));
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff61bd86),
        body:Column(

          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Padding(padding: EdgeInsets.only(top: 10),
              child: Image.asset("imagens/logo.png"),),

            Padding(padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () => _telaCaraOuCoroa(),
                child: Image.asset("imagens/botao_jogar.png"),
              )),
            
          ],
        ) ,
      );
  }
}
