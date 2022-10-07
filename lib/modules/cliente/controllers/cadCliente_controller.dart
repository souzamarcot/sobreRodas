import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/cliente/models/cliente_model.dart';
import 'package:sobrerodas/modules/cliente/repositories/cliente_repository.dart';

class CadClienteController extends ChangeNotifier{
  final cpf = TextEditingController();
  final nome = TextEditingController();
  final telefone = TextEditingController();
  final email = TextEditingController();
  final endereco = TextEditingController();
  final _repository = ClienteRepository();

  void salvarOnPressed({
    required VoidCallback sucesso,
    required VoidCallback? Function(String motivo) falha
  }) async {
    try {
      final cliente = ClienteModel(
        cpf: cpf.text,
        nome: nome.text,
        telefone: telefone.text,
        email: email.text,
        endereco: endereco.text,
      );
      await _repository.incluir(cliente);
      final incluido = await _repository.selecionar(cliente.cpf ?? '');
      print(incluido);

      sucesso();
    } catch (e) {
      falha(e.toString());
    }
  }
}