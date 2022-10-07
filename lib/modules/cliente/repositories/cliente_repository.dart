import 'package:sobrerodas/modules/cliente/models/cliente_model.dart';
import 'package:sobrerodas/modules/cliente/repositories/datasource/datasource_ds.dart';
import 'package:sobrerodas/modules/cliente/repositories/datasource/memoria_datasource.dart';

class ClienteRepository{
  final DataSourceBase? _db = MemoriaDataSource();


  Future<void> incluir(ClienteModel cliente) async{
    cliente.isValid();
    _db!.incluir(cliente.toMap());
  }

  Future<void> excluir(ClienteModel cliente) async{  
    _db!.excluir(cliente.toMap());
  }

  Future<void> alterar(ClienteModel cliente) async{
    cliente.isValid();
    _db!.alterar(cliente.toMap());  
  }

  Future<ClienteModel?> selecionar(String cpf) async{
    final map = await _db!.selecionar(cpf);
    if (map == null){
      return null;
    }
    return ClienteModel.fromMap(map);
  }

  Future<List<ClienteModel>?> selecionarTodos() async{
    final maps = await _db!.selecionarTodos();
    var retorno = <ClienteModel>[];
    if(maps == null){
      return null;
    }
    for (var map in maps) {
      if(map == null){
      return null;
    }
      final cliente = ClienteModel.fromMap(map);
      retorno.add(cliente);
    }
    return retorno;
  }
}