import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sobrerodas/modules/servico/controllers/cadServico_controller.dart';
import 'package:sobrerodas/shared/components/botao_formulario/botao_formulario.dart';
import 'package:sobrerodas/shared/components/campo_formulario/campo_formulario.dart';

class CadServico extends StatefulWidget {
  const CadServico({ Key? key }) : super(key: key);

  @override
  State<CadServico> createState() => _CadServicoState();
}

class _CadServicoState extends State<CadServico> {
  final _controller = CadServicoController();

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
      body: Form(
        child: ListView(
          children: [
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Fulano da Silva', 
                icone: Icons.person, 
                controller: _controller.nome, 
                keyBoardType: TextInputType.number, 
                textLabel: 'Nome',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: '(00) 00000-0000', 
                icone: Icons.phone, 
                controller: _controller.telefone, 
                keyBoardType: TextInputType.text, 
                textLabel:'Telefone',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Marca ', 
                icone: Icons.pedal_bike, 
                controller: _controller.modelo, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Modelo de Bike',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Revisão Geral', 
                icone: Icons.toc_outlined,
                controller: _controller.servico, 
                keyBoardType: const TextInputType.numberWithOptions(decimal: true), 
                textLabel: 'Servico',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: '00/00/0000', 
                icone: Icons.calendar_month,
                controller: _controller.data, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Data',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'R\$149,00', 
                icone: Icons.attach_money,
                controller: _controller.valor, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Valor',
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