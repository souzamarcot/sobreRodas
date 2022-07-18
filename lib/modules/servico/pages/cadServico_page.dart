import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/servico/controllers/cadServico_controller.dart';

class CadServico extends StatefulWidget {
  const CadServico({ Key? key }) : super(key: key);

  @override
  State<CadServico> createState() => _CadServicoState();
}

final _controller = CadServicoController();

class _CadServicoState extends State<CadServico> {
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
              child: Text('Cadastro de Serviço'),
            ),
          ],
        ),
      ),
      body: ListView(
        children:[
          Padding(
            padding: const EdgeInsets.fromLTRB(20,30,20,0),
            child: TextFormField(
              controller: _controller.nome,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.person),
                label: Text('Nome do Cliente'),
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
              controller: _controller.modelo,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.pedal_bike),
                label: Text('Modelo de Bicicleta'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.servico,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.construction),
                label: Text('Serviço'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.data,
              keyboardType: TextInputType.datetime,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.date_range),
                label: Text('Data'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.preco,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.attach_money),
                label: Text('Valor'),
                border: OutlineInputBorder(),
              ),
            ),
          ),


          Padding(
            padding: const EdgeInsets.fromLTRB(20,50,20,0),
            child: ElevatedButton(
              onPressed:(){},
              child: const Text('Cadastrar', 
                style: TextStyle(color:Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: const Color.fromRGBO(1, 143, 209, 100),
                minimumSize: const Size(100,50),
              ),
            ),
          ),
        ],
      )
      );
  }
}