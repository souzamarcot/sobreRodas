import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sobrerodas/modules/cliente/controllers/cadCliente_controller.dart';
import 'package:sobrerodas/shared/components/botao_formulario/botao_formulario.dart';
import 'package:sobrerodas/shared/components/campo_formulario/campo_formulario.dart';


class CadCliente extends StatefulWidget {
  const CadCliente({ Key? key }) : super(key: key);

  @override
  State<CadCliente> createState() => _CadClienteState();
}

class _CadClienteState extends State<CadCliente> {
  final _controller = CadClienteController();

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
      body: Form(
        child: ListView(
          children: [
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: '000.000.000-00', 
                icone: Icons.badge, 
                controller: _controller.cpf, 
                keyBoardType: TextInputType.number, 
                textLabel: 'CPF',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Fulano da Silva', 
                icone: Icons.person, 
                controller: _controller.nome, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Nome',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: '(00) 00000-0000', 
                icone: Icons.phone, 
                controller: _controller.telefone, 
                keyBoardType: TextInputType.phone, 
                textLabel: 'Telefone',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'fulano@fulano.com', 
                icone: Icons.email, 
                controller: _controller.email, 
                keyBoardType: TextInputType.emailAddress, 
                textLabel: 'E-mail',
              ),
            ),
            Padding(
              padding:  const EdgeInsets.fromLTRB(20,30,20,0),
              child: CampoForm(
                hintText: 'Rua, nº, bairro, cidade, estado.', 
                icone: Icons.house, 
                controller: _controller.endereco, 
                keyBoardType: TextInputType.text, 
                textLabel: 'Endereço',
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