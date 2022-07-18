import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/cliente/controllers/cadCliente_controller.dart';

class CadCliente extends StatefulWidget {
  const CadCliente({ Key? key }) : super(key: key);

  @override
  State<CadCliente> createState() => _CadClienteState();
}

final _controller = CadClienteController();

class _CadClienteState extends State<CadCliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 143, 209, 100),
        title: Row(
          children: const [
            Icon(Icons.menu),
          //Image.asset('assets/images/logo.png', width:40, height: 40,),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Cadastro de Cliente'),
            ),
          ],
        )
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,30,20,0),
            child: TextFormField(
              controller: _controller.CPF,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.badge),
                label: Text('CPF'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.nome,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text('Nome'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.telefone,
              keyboardType: TextInputType.phone,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                label: Text('Telefone'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.email,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                label: Text('E-mail'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.endereco,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.house),
                label: Text('Endereço'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20,50,20,0),
            child: ElevatedButton(
              onPressed:(){},
              child: const Text('Cadastrar',
                style: TextStyle(
                  color:Colors.white
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(1, 143, 209, 100), 
                minimumSize: const Size(100,50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}