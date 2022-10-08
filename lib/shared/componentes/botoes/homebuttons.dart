import 'dart:ui';

import 'package:flutter/material.dart';

class HomeButton extends StatefulWidget {
  final String texto;
  final Color cor;
  final Color cortexto;
  final IconData? icone;

  void Function()? aoClicar;

  HomeButton({Key? key,
  required this.texto,
  required this.cor,
  required this.cortexto,
  this.icone,

  this.aoClicar, 
  }) : super(key: key);

  @override
  State<HomeButton> createState() => _HomeButtonState();
}

class _HomeButtonState extends State<HomeButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
    width: 200,
    height: 200,
    child: RaisedButton(
  color: widget.cor,
  padding: EdgeInsets.all(8.0),
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(4.0),
        child: Icon(
          widget.icone,
          size: 100,
          color: Colors.white,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(2.0),
        child: Text(widget.texto,
          style: TextStyle(
            color: widget.cortexto,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ],
  ),
  onPressed: widget.aoClicar,),);
  }
}