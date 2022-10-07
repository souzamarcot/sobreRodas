import 'package:sobrerodas/modules/cliente/repositories/datasource/datasource_ds.dart';

class MemoriaDataSource extends DataSourceBase {
  static List<Map<String, dynamic>> tabelaCliente = [];

  @override
  Future<void> alterar(Map<String, dynamic> cliente) async {
    for (var i=0; i<tabelaCliente.length; i++) {
      if (tabelaCliente[i]['cpf'] == cliente['cpf']){
        tabelaCliente[i]['nome'] = cliente['nome'];
        tabelaCliente[i]['telefone'] = cliente['telefone'];
        tabelaCliente[i]['email'] = cliente['email'];
        tabelaCliente[i]['endereco'] = cliente['endereco'];
        break;
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> cliente) async {
    tabelaCliente.remove(cliente);
  }

  @override
  Future<void> incluir(Map<String, dynamic> cliente) async {
    tabelaCliente.add(cliente);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String cpf) async{
    for (var cliente in tabelaCliente) {
      if (cliente['cpf'] == cpf){
        return cliente;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>?>?> selecionarTodos() async {
    return tabelaCliente;
  }

}