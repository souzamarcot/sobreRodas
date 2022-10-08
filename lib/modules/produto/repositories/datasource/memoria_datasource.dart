import 'package:sobrerodas/modules/produto/repositories/datasource/datasource_ds.dart';

class MemoriaDataSource extends DataSourceBase {
  static List<Map<String, dynamic>> tabelaCliente = [];

  @override
  Future<void> alterar(Map<String, dynamic> produto) async {
    for (var i=0; i<tabelaCliente.length; i++) {
      if (tabelaCliente[i]['cpf'] == produto['cpf']){
        tabelaCliente[i]['nome'] = produto['nome'];
        tabelaCliente[i]['telefone'] = produto['telefone'];
        tabelaCliente[i]['email'] = produto['email'];
        tabelaCliente[i]['endereco'] = produto['endereco'];
        break;
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> produto) async {
    tabelaCliente.remove(produto);
  }

  @override
  Future<void> incluir(Map<String, dynamic> produto) async {
    tabelaCliente.add(produto);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String cpf) async{
    for (var produto in tabelaCliente) {
      if (produto['cpf'] == cpf){
        return produto;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>?>?> selecionarTodos() async {
    return tabelaCliente;
  }

}