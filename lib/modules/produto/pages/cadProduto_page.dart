import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/produto/controllers/cadProduto_controller.dart';

class CadProduto extends StatefulWidget {
  const CadProduto({ Key? key }) : super(key: key);

  @override
  State<CadProduto> createState() => _CadProdutoState();
}

final _controller = CadProdutoController();

class _CadProdutoState extends State<CadProduto> {
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
              child: Text('Cadastro de Peças'),
            ),
          ],
        )
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20,30,20,0),
            child: TextFormField(
              controller: _controller.numero,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Número da Peça'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.nomepeca,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('Nome da Peça'),
                border: OutlineInputBorder(),
              ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.fornecedor,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('Fornecedor'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.precopeca,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                label: Text('Preço'),
                border: OutlineInputBorder(),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: TextFormField(
              controller: _controller.descricao,
              keyboardType: TextInputType.text,
              decoration: const InputDecoration(
                label: Text('Descrição'),
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
                minimumSize: const Size(100,50)
              ),
            ),
          ),
        ],
      )
    );
  }
}