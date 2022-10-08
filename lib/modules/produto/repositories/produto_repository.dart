import 'package:sobrerodas/modules/produto/models/produto_model.dart';
import 'package:sobrerodas/modules/produto/repositories/datasource/datasource_ds.dart';
import 'package:sobrerodas/modules/produto/repositories/datasource/memoria_datasource.dart';

class ProdutoRepository{
  final DataSourceBase? _db = MemoriaDataSource();


  Future<void> incluir(ProdutoModel produto) async{
    produto.isValid();
    _db!.incluir(produto.toMap());
  }

  Future<void> excluir(ProdutoModel produto) async{  
    _db!.excluir(produto.toMap());
  }

  Future<void> alterar(ProdutoModel produto) async{
    produto.isValid();
    _db!.alterar(produto.toMap());  
  }

  Future<ProdutoModel?> selecionar(String cpf) async{
    final map = await _db!.selecionar(cpf);
    if (map == null){
      return null;
    }
    return ProdutoModel.fromMap(map);
  }

  Future<List<ProdutoModel>?> selecionarTodos() async{
    final maps = await _db!.selecionarTodos();
    var retorno = <ProdutoModel>[];
    if(maps == null){
      return null;
    }
    for (var map in maps) {
      if(map == null){
      return null;
    }
      final produto = ProdutoModel.fromMap(map);
      retorno.add(produto);
    }
    return retorno;
  }
}