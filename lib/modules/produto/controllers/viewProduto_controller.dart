import 'package:flutter/cupertino.dart';
import 'package:sobrerodas/modules/produto/models/produto_model.dart';
import 'package:sobrerodas/modules/produto/repositories/produto_repository.dart';

class ViewProdutoController extends ChangeNotifier{
  final dado = TextEditingController();
  final _repository = ProdutoRepository();

  Future<ProdutoModel> selecionarProdutos (int index) async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.elementAt(index);
    } else{
      return ProdutoModel();
    }
    
  }

  Future <int> numeroProdutos () async {
    var lista = await _repository.selecionarTodos();
    if (lista != null){
      return lista.length;
    } else{
      return 0;
    }
  }
}