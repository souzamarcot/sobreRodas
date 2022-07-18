import 'package:flutter/material.dart';

class ViewServico extends StatefulWidget {
  const ViewServico({ Key? key }) : super(key: key);

  @override
  State<ViewServico> createState() => _ViewServicoState();
}

class _ViewServicoState extends State<ViewServico> {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            texto("Nome do cliente: "),
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
            texto("Modelo de bicicleta: "),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,5,20,0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.pedal_bike),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
              ),
            ),
            texto("Serviço: "),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,5,20,0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.construction),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
              ),
            ),
            texto("Data: "),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,5,20,0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.date_range),
                  border: OutlineInputBorder(),
                ),
                readOnly: true,
              ),
            ),
            texto("Valor: "),
            Padding(
              padding: const EdgeInsets.fromLTRB(20,5,20,0),
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.attach_money),
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
                  padding: const EdgeInsets.fromLTRB(10,20,20,20),
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
                  padding: const EdgeInsets.fromLTRB(10,20,20,20),
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