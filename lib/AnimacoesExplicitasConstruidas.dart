import 'package:flutter/material.dart';

class AnimacoesExplicitasConstruidas extends StatefulWidget {
  const AnimacoesExplicitasConstruidas({Key? key}) : super(key: key);

  @override
  _AnimacoesExplicitasConstruidasState createState() =>
      _AnimacoesExplicitasConstruidasState();
}

class _AnimacoesExplicitasConstruidasState
    extends State<AnimacoesExplicitasConstruidas>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late AnimationStatus _animationStatus;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 5),
    )
      ..repeat()
      ..addStatusListener((status) {
        _animationStatus = status;
      });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Container(
            width: 300,
            height: 400,
            child: RotationTransition(
              turns: _animationController,
              child: Image.asset("imagens/logo.png"),
              alignment: Alignment.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_animationStatus == AnimationStatus.dismissed) {
                //_animationController.forward();
                _animationController.repeat();
              } else {
                _animationController.reverse();
              }
              /*
              if(_animationController.isAnimating){
                _animationController.stop();
              }else{
                _animationController.repeat();
              }
              */
            },
            child: Text("Pressione"),
          )
        ],
      ),
    );
  }
}
