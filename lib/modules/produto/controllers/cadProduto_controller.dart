import 'package:flutter/material.dart';
import 'package:sobrerodas/modules/produto/models/produto_model.dart';
import 'package:sobrerodas/modules/produto/repositories/produto_repository.dart';

class CadProdutoController extends ChangeNotifier{
  final numero = TextEditingController();
  final nomepeca = TextEditingController();
  final fornecedor = TextEditingController();
  final precopeca = TextEditingController();
  final descricao = TextEditingController();
  final _repository = ProdutoRepository();

  void salvarOnPressed({
    required VoidCallback sucesso,
    required VoidCallback? Function(String motivo) falha
  }) async {
    try {
      final produto = ProdutoModel(
        numero: numero.text,
        nomepeca: nomepeca.text,
        fornecedor: fornecedor.text,
        precopeca: precopeca.text,
        descricao: descricao.text,
      );
      await _repository.incluir(produto);
      final incluido = await _repository.selecionar(produto.numero ?? '');
      print(incluido);

      sucesso();
    } catch (e) {
      falha(e.toString());
    }
  }
}