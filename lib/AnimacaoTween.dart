import 'package:flutter/material.dart';

class AnimacaoTween extends StatefulWidget {
  const AnimacaoTween({Key? key}) : super(key: key);

  @override
  _AnimacaoTweenState createState() => _AnimacaoTweenState();
}

class _AnimacaoTweenState extends State<AnimacaoTween> {

  final colorTween = ColorTween(begin: Colors.white, end: Colors.orange);

  @override
  Widget build(BuildContext context) {
    return Center(
      /*
      child: TweenAnimationBuilder(
        //define o tipo de interpolação de mudança
        tween: Tween<double>(begin: 0, end: 6.28),
        duration: Duration(seconds: 2),
        builder: (BuildContext context, double rotacao, Widget? widget) {
          return Transform.rotate(
            angle: rotacao,
            child: Image.asset("imagens/logo.png"),
          );
        },
      ),
      */
      /*
      child: TweenAnimationBuilder(
        //define o tipo de interpolação de mudança
        tween: Tween<double>(begin: 50, end: 180),
        duration: Duration(seconds: 2),
        builder: (BuildContext context, double largura, Widget? widget) {
          return Container(
            color: Colors.green,
            width: largura,
            height: 60,
          );
        },
      ),
      */
      child: TweenAnimationBuilder(
        //define o tipo de interpolação de mudança
        tween: colorTween,
        duration: Duration(seconds: 1),
        child: Image.asset("imagens/estrelas.jpg"),
        builder: (BuildContext context, Color? cor, Widget? widget) {
          return ColorFiltered(
            colorFilter: ColorFilter.mode(
              cor!,
              BlendMode.overlay,
            ),
            child: widget,
          );
        },
      ),
    );
  }
}
