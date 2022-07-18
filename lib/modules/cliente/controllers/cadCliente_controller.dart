import 'package:flutter/cupertino.dart';

class CadClienteController extends ChangeNotifier{
  final CPF = TextEditingController();
  final nome = TextEditingController();
  final telefone = TextEditingController();
  final email = TextEditingController();
  final endereco = TextEditingController();
}