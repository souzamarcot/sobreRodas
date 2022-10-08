import 'package:flutter/cupertino.dart';
import 'package:sobrerodas/modules/servico/models/servico_model.dart';
import 'package:sobrerodas/modules/servico/repositores/servico_repository.dart';

class CadServicoController extends ChangeNotifier{
  final nome = TextEditingController();
  final telefone = TextEditingController();
  final modelo = TextEditingController();
  final servico = TextEditingController();
  final data = TextEditingController();
  final valor = TextEditingController();
  final _repository = ServicoRepository();

  void salvarOnPressed({
    required VoidCallback sucesso,
    required VoidCallback? Function(String motivo) falha
  }) async {
    try {
      final Servico = ServicoModel(
        nome: nome.text,
        telefone: telefone.text,
        modelo: modelo.text,
        servico: servico.text,
        data: data.text,
        valor: valor.text,
      );
      await _repository.incluir(Servico);
      final incluido = await _repository.selecionar(Servico.nome ?? '');
      print(incluido);

      sucesso();
    } catch (e) {
      falha(e.toString());
    }
  }
}
