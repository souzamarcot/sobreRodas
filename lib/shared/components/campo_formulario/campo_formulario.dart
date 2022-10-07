import 'package:flutter/material.dart';

class CampoForm extends StatefulWidget {
  final String hintText;
  final IconData icone;
  final TextEditingController controller;
  final bool? password;
  final TextInputType keyBoardType;
  final String textLabel;

  const CampoForm({
    Key? key,
    required this.hintText,
    required this.icone,
    required this.controller, 
    this.password,
    required this.keyBoardType, 
    required this.textLabel,
    }) : super(key: key);

  @override
  State<CampoForm> createState() => _CampoFormState();
}

class _CampoFormState extends State<CampoForm> {
  var _mostrarSenha = true;

  @override
  void initState() {
    super.initState();
    _mostrarSenha = true;
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
          child: TextFormField(
            obscureText: widget.password == true ? _mostrarSenha : false,
            decoration: InputDecoration(
              label: Text(widget.textLabel),
              labelStyle: const TextStyle(height: 3),
              prefixIcon: Icon(widget.icone),
              hintText: widget.hintText,
              border: const OutlineInputBorder(),
              fillColor: Colors.white,
              filled: true,
              suffixIcon: widget.password == true ? IconButton(
                onPressed: (){
                  setState(() {
                    _mostrarSenha = !_mostrarSenha;
                  });
                }, 
                icon: _mostrarSenha == true ? const Icon(Icons.visibility_off): const Icon(Icons.visibility)
              ):null,
            ),
            controller: widget.controller,
          ),
        ),
      ],
    );
  }
}