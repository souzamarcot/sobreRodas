import 'package:flutter/cupertino.dart';
import 'package:sobrerodas/modules/servico/models/servico_model.dart';
import 'package:sobrerodas/modules/servico/repositores/servico_repository.dart';

class ViewServicoController extends ChangeNotifier{
  final dado = TextEditingController();
  final _repository = ServicoRepository();

  Future<ServicoModel> selecionarServicos (int index) async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.elementAt(index);
    } else{
      return ServicoModel();
    }
    
  }

  Future <int> nomeServicos () async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.length;
    } else{
      return 0;
    }
  }
}