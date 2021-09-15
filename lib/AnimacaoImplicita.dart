import 'package:flutter/material.dart';

class AnimacaoImplicita extends StatefulWidget {
  const AnimacaoImplicita({Key? key}) : super(key: key);

  @override
  _AnimacaoImplicitaState createState() => _AnimacaoImplicitaState();
}

class _AnimacaoImplicitaState extends State<AnimacaoImplicita> {

  //baseado neste estado que ocorrera a alteração
  bool _status = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AnimatedContainer(
          padding: EdgeInsets.all(20),
          width: _status ? 200 : 300,
          height: _status ? 300: 200,
          color: _status ? Colors.white : Colors.purpleAccent,
          //O tempo de duração da animação
          duration: Duration(seconds: 1),
          child: Image.asset("imagens/logo.png"),
          //Como ele vai ser animado
          curve: Curves.elasticInOut,
        ),
        ElevatedButton(onPressed: () {setState(() {
          _status= !_status;
        });}, child: Text("Alterar"))
      ],
    );
  }
}
