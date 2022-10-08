import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sobrerodas/modules/produto/controllers/cadProduto_controller.dart';
import 'package:sobrerodas/shared/components/botao_formulario/botao_formulario.dart';
import 'package:sobrerodas/shared/components/campo_formulario/campo_formulario.dart';

class CadProduto extends StatefulWidget {
  const CadProduto({ Key? key }) : super(key: key);

  @override
  State<CadProduto> createState() => _CadProdutoState();
}

class _CadProdutoState extends State<CadProduto> {
  final _controller = CadProdutoController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(1, 143, 209, 100),
        title: Row(
          children: const [
            Icon(Icons.menu),
            Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
              child: Text('Cadastro de Produto'),
            ),
          ],
        )
      ),
      body: Form(
        child: ListView(
          children: [
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: '00000', 
                icone: Icons.numbers, 
                controller: _controller.numero, 
                keyBoardType: TextInputType.number, 
                textLabel: 'Número da Peça',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Nome da Peça', 
                icone: Icons.text_fields, 
                controller: _controller.nomepeca, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Nome da Peça',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Fonecedor', 
                icone: Icons.store, 
                controller: _controller.fornecedor, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Fornecedor',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'R\$149,00', 
                icone: Icons.attach_money,
                controller: _controller.precopeca, 
                keyBoardType: const TextInputType.numberWithOptions(decimal: true), 
                textLabel: 'Preço',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Descrição', 
                icone: Icons.text_fields,
                controller: _controller.descricao, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Descrição',
              ),
            ),

          Padding(
            padding: const EdgeInsets.fromLTRB(20,50,20,0),
            child: BotaoForm(
                texto: 'Cadastrar', 
                cor: Colors.blue, 
                corTexto: Colors.white,
                aoClicar: (){
                  _controller.salvarOnPressed(
                    sucesso: (){
                      Navigator.pop(context);
                    },
                    falha: (motivo){
                      MotionToast.error(
                        title: const Text(
                          'Erro',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        description: Text(motivo),
                        animationType: AnimationType.fromLeft,
                        position: MotionToastPosition.top,
                        barrierColor: Colors.black.withOpacity(0.3),
                        width: 300,
                        height: 80,
                        dismissable: false,
                      ).show(context);
                    }
                  );
                },
              ),
          ),
        ],
        ),
      ),
    );
  }
}