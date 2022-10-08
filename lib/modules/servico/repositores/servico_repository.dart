import 'package:sobrerodas/modules/servico/models/servico_model.dart';
import 'package:sobrerodas/modules/servico/repositores/datasource/datasource_ds.dart';
import 'package:sobrerodas/modules/servico/repositores/datasource/memoria_datasource.dart';

class ServicoRepository{
  final DataSourceBase? _db = MemoriaDataSource();


  Future<void> incluir(ServicoModel servico) async{
    servico.isValid();
    _db!.incluir(servico.toMap());
  }

  Future<void> excluir(ServicoModel servico) async{  
    _db!.excluir(servico.toMap());
  }

  Future<void> alterar(ServicoModel servico) async{
    servico.isValid();
    _db!.alterar(servico.toMap());  
  }

  Future<ServicoModel?> selecionar(String cpf) async{
    final map = await _db!.selecionar(cpf);
    if (map == null){
      return null;
    }
    return ServicoModel.fromMap(map);
  }

  Future<List<ServicoModel>?> selecionarTodos() async{
    final maps = await _db!.selecionarTodos();
    var retorno = <ServicoModel>[];
    if(maps == null){
      return null;
    }
    for (var map in maps) {
      if(map == null){
      return null;
    }
      final servico = ServicoModel.fromMap(map);
      retorno.add(servico);
    }
    return retorno;
  }
}