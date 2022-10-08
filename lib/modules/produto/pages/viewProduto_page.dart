import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/produto/controllers/viewProduto_controller.dart';
import 'package:sobrerodas/modules/produto/models/produto_model.dart';

class ViewProduto extends StatefulWidget {
  const ViewProduto({ Key? key }) : super(key: key);

  @override
  State<ViewProduto> createState() => _ViewProdutoState();
}


class _ViewProdutoState extends State<ViewProduto> {
  @override
  void initState() {
   selecionaProduto();
    super.initState();
  }
  final _controller = ViewProdutoController();
  int index = 0;
  ProdutoModel produto = ProdutoModel();
  int numeroProdutos = 0;

  selecionaProduto() async{
    produto = await _controller.selecionarProdutos(index);
    numeroProdutos = await _controller.numeroProdutos();
    print(produto);
    print(numeroProdutos);
    setState(() { 
      produto;
      numeroProdutos;
    });
  }


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
              child: Text('Produtos Cadastrados'),
            ),
          ],
        )
      ),
      body: produto.numero!.isNotEmpty ? Column(
        children: [
          texto("Número: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: produto.numero,
                prefixIcon: const Icon(Icons.numbers),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Nome da Peça: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: produto.nomepeca,
                prefixIcon: const Icon(Icons.text_fields),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Fonecedor: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: produto.fornecedor,
                prefixIcon: const Icon(Icons.store),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Preço: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: produto.precopeca,
                prefixIcon: const Icon(Icons.attach_money),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Descriçao: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
              hintText: produto.descricao,
                prefixIcon: const Icon(Icons.text_fields),
                border: const OutlineInputBorder(),
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
                  onPressed:(){
                    setState(() {
                      if (index > 0){
                        index--;
                      }
                      selecionaProduto();
                    });
                  },
                  child: const Text('<',
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
                  onPressed:(){
                    setState(() {
                      if (index < numeroProdutos - 1){
                        index++;
                      }
                      selecionaProduto();
                    });
                  },
                  child: const Text('>',
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
      ) : const Text('Não há produtos cadastrados!')
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