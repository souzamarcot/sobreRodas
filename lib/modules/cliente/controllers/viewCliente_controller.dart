import 'package:flutter/cupertino.dart';
import 'package:sobrerodas/modules/cliente/models/cliente_model.dart';
import 'package:sobrerodas/modules/cliente/repositories/cliente_repository.dart';

class ViewClienteController extends ChangeNotifier{
  final dado = TextEditingController();
  final _repository = ClienteRepository();

  Future<ClienteModel> selecionarClientes (int index) async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.elementAt(index);
    } else{
      return ClienteModel();
    }
    
  }

  Future <int> numeroClientes () async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.length;
    } else{
      return 0;
    }
  }
}