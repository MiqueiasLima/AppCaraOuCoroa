import 'package:flutter/material.dart';

class Tela_Inicial extends StatefulWidget {
  const Tela_Inicial({Key? key}) : super(key: key);

  @override
  _Tela_InicialState createState() => _Tela_InicialState();
}

class _Tela_InicialState extends State<Tela_Inicial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10),
          child: Image.asset("imagens/logo.png"),),

          Padding(padding: EdgeInsets.only(top: 10),
            child: Image.asset("imagens/botao_jogar.png"),)

        ],
      ) ,
    );
  }
}
