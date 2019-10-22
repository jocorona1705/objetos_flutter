import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {

  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  int contador = 1;
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aminated  Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 3000),
          curve: Curves.bounceOut,
           width: _width,
           height: _height,
           decoration: BoxDecoration(
             borderRadius: _borderRadius,
             color: _color
           ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add_to_queue),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma(){
      
      final Random r = new Random();
      
      setState(() {
          _width = r.nextInt(300).toDouble();
          _height = r.nextInt(300).toDouble();
          _color = Color.fromRGBO(
            r.nextInt(255), 
            r.nextInt(255), 
            r.nextInt(255), 
            1);
      });
  }
}