import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/home/controllers/home_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePage();
}

final _controller = HomeController();

class _HomePage extends State<HomePage> {
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
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Cadastrar Produtos',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.fromLTRB(10,30,20,0),
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver Produtos',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
              ],
            ),





          // Serviços
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,30,10,0),
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Cadastrar Serviços',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.fromLTRB(10,30,20,0),
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver Serviços',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
              ],
            ),






          // Clientes
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20,30,10,0),
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Cadastrar Clientes',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
                Padding(
                padding: const EdgeInsets.fromLTRB(10,30,20,0),
                child: 
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      'Ver Clientes',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blue, minimumSize: const Size(225, 50),
                    ),
                  ),
                ),
              ],
            ),
        ],
      )
    );
  }
}