import 'package:flutter/cupertino.dart';

class CadServicoController extends ChangeNotifier{
  final nome = TextEditingController();
  final telefone = TextEditingController();
  final modelo = TextEditingController();
  final servico = TextEditingController();
  final data = TextEditingController();
  final preco = TextEditingController();
}