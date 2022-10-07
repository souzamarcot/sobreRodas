import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:motion_toast/resources/arrays.dart';
import 'package:sobrerodas/modules/cliente/pages/cadCliente_page.dart';
import 'package:sobrerodas/modules/cliente/pages/viewCliente_page.dart';
import 'package:sobrerodas/modules/cliente/repositories/cliente_repository.dart';
import 'package:sobrerodas/modules/home/controllers/home_controller.dart';
import 'package:sobrerodas/modules/produto/pages/cadProduto_page.dart';
import 'package:sobrerodas/modules/produto/pages/viewProduto_page.dart';
import 'package:sobrerodas/modules/servico/pages/cadServico_page.dart';
import 'package:sobrerodas/modules/servico/pages/viewServico_page.dart';
import 'package:sobrerodas/shared/components/botao_formulario/botao_formulario.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}



class _HomePage extends State<HomePage> {
  final _controller = HomeController();

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
              child: Text('Página Inicial'),
            ),
          ],
        )
      ),
      body: ListView(
        children: [
          //Produtos
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,30,10,0),
                child: BotaoForm(
                  texto: 'Cadastrar Produtos', 
                  cor: Colors.blue, 
                  corTexto: Colors.white,
                  aoClicar: (){
                    final rota = MaterialPageRoute(
                      builder: (context) => const CadProduto(),
                    );
                    Navigator.of(context).push(rota);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20,30,10,0),
                child: BotaoForm(
                  texto: 'Ver Produtos', 
                  cor: Colors.blue, 
                  corTexto: Colors.white,
                  aoClicar: (){
                    final rota = MaterialPageRoute(
                      builder: (context) => const ViewProduto(),
                    );
                    Navigator.of(context).push(rota);
                  },
                ),
              ),
              ],
          ),

        // Serviços
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,30,10,0),
              child: BotaoForm(
                texto: 'Cadastrar Serviços', 
                cor: Colors.blue, 
                corTexto: Colors.white,
                aoClicar: (){
                  final rota = MaterialPageRoute(
                    builder: (context) => const CadServico(),
                  );
                  Navigator.of(context).push(rota);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,30,10,0),
              child: BotaoForm(
                texto: 'Ver Serviços', 
                cor: Colors.blue, 
                corTexto: Colors.white,
                aoClicar: (){
                  final rota = MaterialPageRoute(
                    builder: (context) => const ViewServico(),
                  );
                  Navigator.of(context).push(rota);
                },
              ),
            ),
          ],
        ),

        // Clientes
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20,30,10,0),
              child: BotaoForm(
                texto: 'Cadastrar Clientes', 
                cor: Colors.blue, 
                corTexto: Colors.white,
                aoClicar: (){
                  final rota = MaterialPageRoute(
                    builder: (context) => const CadCliente(),
                  );
                  Navigator.of(context).push(rota);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,30,10,0),
              child: BotaoForm(
                texto: 'Ver Clientes', 
                cor: Colors.blue, 
                corTexto: Colors.white,
                aoClicar: () async {
                  var existe = await _controller.existeClientes();
                  if (existe){
                    final rota = MaterialPageRoute(
                      builder: (context) => const ViewCliente(),
                    );
                    Navigator.of(context).push(rota);
                  } else {
                    MotionToast.error(
                        title: const Text(
                          'Erro',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        description: const Text('Não há clientes cadastrados!'),
                        animationType: AnimationType.fromLeft,
                        position: MotionToastPosition.top,
                        barrierColor: Colors.black.withOpacity(0.3),
                        width: 300,
                        height: 80,
                        dismissable: false,
                      ).show(context);
                  }
                },
              ),
            ),
          ],
        ),
        ],
      )
    );
  }
}