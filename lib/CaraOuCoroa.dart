import 'package:flutter/material.dart';

import 'Tela_Inicial.dart';

class CaraOuCoroa extends StatefulWidget {

  final String resultado;

  const CaraOuCoroa({Key? key, required this.resultado}) : super(key: key);

  @override
  _CaraOuCoroaState createState() => _CaraOuCoroaState();
}

class _CaraOuCoroaState extends State<CaraOuCoroa> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body:Column(

        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(padding: EdgeInsets.only(top: 10),
            child: Image.asset("${widget.resultado}"),),

          Padding(padding: EdgeInsets.only(top: 10),
              child: GestureDetector(
                onTap: () => Navigator.pop(context),
                child: Image.asset("imagens/botao_voltar.png"),
              )),

        ],
      ) ,
    );
  }
}
