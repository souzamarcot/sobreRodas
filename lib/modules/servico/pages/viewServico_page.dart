import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/servico/controllers/viewServico_controller.dart';
import 'package:sobrerodas/modules/servico/models/servico_model.dart';

class ViewServico extends StatefulWidget {
  const ViewServico({ Key? key }) : super(key: key);

  @override
  State<ViewServico> createState() => _ViewServicoState();
}


class _ViewServicoState extends State<ViewServico> {
  @override
  void initState() {
   selecionaServico();
    super.initState();
  }
  final _controller = ViewServicoController();
  int index = 0;
  ServicoModel servico = ServicoModel();
  int numeroServicos = 0;

  selecionaServico() async{
    servico = await _controller.selecionarServicos(index);
    numeroServicos = await _controller.nomeServicos();
    print(servico);
    print(numeroServicos);
    setState(() { 
      servico;
      numeroServicos;
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
              child: Text('Serviços Cadastrados'),
            ),
          ],
        )
      ),
      body: servico.nome!.isNotEmpty ? ListView(
        children: [
          texto("Nome: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: servico.nome,
                prefixIcon: const Icon(Icons.person),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Telefone: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: servico.telefone,
                prefixIcon: const Icon(Icons.phone),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Modelo de Bicicleta: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: servico.modelo,
                prefixIcon: const Icon(Icons.pedal_bike),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Serviço: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: servico.servico,
                prefixIcon: const Icon(Icons.toc_outlined),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Data: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
              hintText: servico.data,
                prefixIcon: const Icon(Icons.calendar_month),
                border: const OutlineInputBorder(),
              ),
              readOnly: true,
            ),
          ),
          texto("Valor: "),
          Padding(
            padding: const EdgeInsets.fromLTRB(20,5,20,0),
            child: TextFormField(
              decoration: InputDecoration(
              hintText: servico.valor,
                prefixIcon: const Icon(Icons.attach_money),
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
                      selecionaServico();
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
                      if (index < numeroServicos - 1){
                        index++;
                      }
                      selecionaServico();
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