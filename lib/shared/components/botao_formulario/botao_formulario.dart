import 'package:flutter/material.dart';

class BotaoForm extends StatefulWidget {
  final String texto;
  final Color cor;
  final Color corTexto;
  void Function()? aoClicar;

  BotaoForm(
    {Key? key,
    required this.texto,
    required this.cor,
    required this.corTexto,
    this.aoClicar
    }
  ): super(key: key);

  @override
  State<BotaoForm> createState() => _BotaoFormState();
}

class _BotaoFormState extends State<BotaoForm>{
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.aoClicar,
      child: Text(
        widget.texto,
        style: TextStyle(color: widget.corTexto),
      ),
      style: ElevatedButton.styleFrom(
        primary: widget.cor,
        minimumSize: Size(225, 50),
      ),
    );
  }
}