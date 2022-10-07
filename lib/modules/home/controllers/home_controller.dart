import 'package:flutter/cupertino.dart';
import 'package:sobrerodas/modules/cliente/repositories/cliente_repository.dart';

class HomeController extends ChangeNotifier{
  final _repository = ClienteRepository();

  Future <bool> existeClientes() async {
    var clientes = await _repository.selecionarTodos();
    if (clientes != null){
      return true;
    } else{
      return false;
    }

    
  }
}