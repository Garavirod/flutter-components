import 'dart:math';

import 'package:flutter/material.dart';


class AnimatedView extends StatefulWidget {
  AnimatedView({Key key}) : super(key: key);

  @override
  _AnimatedViewState createState() => _AnimatedViewState();
}

class _AnimatedViewState extends State<AnimatedView> {

  double _width  = 50.0;
  double _height = 50.0;
  Color  _color  = Colors.pink[300];
  BorderRadiusGeometry _borderRadiusGeometry = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( title: Text('Animation'),),
      body: Center(
        child: AnimatedContainer(
          width: this._width,
          height: this._height,
          decoration: BoxDecoration(
            borderRadius: this._borderRadiusGeometry,
            color: this._color
          ),
          duration: Duration( seconds: 1 ),
          curve: Curves.fastOutSlowIn // configurated effects
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: initAnimation,
      ),
    );
  }

  /* Methods */
  void initAnimation(){
    final random = Random();

    setState(() {
      this._height = random.nextInt(300).toDouble();
      this._width = random.nextInt(300).toDouble();
      this._color = Color.fromRGBO(
        random.nextInt(255), 
        random.nextInt(255), 
        random.nextInt(255), 
        1);
    });
  }
}