import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/cliente/controllers/viewCliente_controller.dart';

class ViewCliente extends StatefulWidget {
  const ViewCliente({ Key? key }) : super(key: key);

  @override
  State<ViewCliente> createState() => _ViewClienteState();
}

final _controller = ViewClienteController();

class _ViewClienteState extends State<ViewCliente> {
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
              child: Text('Clientes Cadastrados'),
            ),
          ],
        )
      ),
      body: Column(
        children: [
          texto("CPF: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.badge),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Nome: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Telefone: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.phone),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("E-mail: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Endereço: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.house),
                border: OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,20,0),
                child: ElevatedButton(
                  onPressed:(){},
                  child: const Text('Retornar',
                    style: TextStyle(
                      color:Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(1, 143, 209, 100), 
                    minimumSize: const Size(80,40),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10,20,20,0),
                child: ElevatedButton(
                  onPressed:(){},
                  child: const Text('Próximo',
                    style: TextStyle(
                      color:Colors.white
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: const Color.fromRGBO(1, 143, 209, 100), 
                    minimumSize: const Size(80,40),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget texto(String texto){
    return Container(
      width: 500,
      padding: const EdgeInsets.fromLTRB(50,25,20,0),
      child: Text(texto,
        style: const TextStyle(
          fontSize: 16,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}