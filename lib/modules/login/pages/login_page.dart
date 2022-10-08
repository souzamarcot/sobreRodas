import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/login/controllers/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
var _mostrarSenha = false;
final _controller = LoginController();

  @override
  void initState() {
    super.initState();
    _mostrarSenha = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [


          const Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
            child: Text(" ")
          ),


          //Usuario
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
              ), 
              child: TextFormField(
                controller: _controller.email,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: 'Ex.: exemplo@email.com',
                  label: Text('E-mail'),
                  border: OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),


          //Senha
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 20, 0),
            child: Theme(
              data: ThemeData(
                primarySwatch: Colors.blue,
              ), 
              child: TextFormField(
                controller: _controller.senha,
                obscureText: _mostrarSenha,
                keyboardType: TextInputType.text,
                decoration:  InputDecoration(
                  prefixIcon: const Icon(Icons.password),
                  suffixIcon: IconButton(
                    onPressed: (){
                      setState(() {
                        _mostrarSenha = !_mostrarSenha;
                      });
                    }, 
                    icon: _mostrarSenha == true ? const Icon(Icons.visibility_off): const Icon(Icons.visibility)
                  ),
                  hintText: '****',
                  label: const Text('Senha'),
                  border: const OutlineInputBorder(),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
            ),
          ),


          //Botão entrar
          Padding(
            padding: const EdgeInsets.fromLTRB(50, 50, 50, 0),
            child: ElevatedButton(
              onPressed: () { },
              child: const Text(
                'Entrar',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, minimumSize: const Size(100, 50),
              ),
            ),
          ),
        ]
      ),
    );
  }
}