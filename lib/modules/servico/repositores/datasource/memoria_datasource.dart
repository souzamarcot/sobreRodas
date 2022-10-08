import '../../../servico/repositores/datasource/datasource_ds.dart';

class MemoriaDataSource extends DataSourceBase {
  static List<Map<String, dynamic>> tabelaServico = [];

  @override
  Future<void> alterar(Map<String, dynamic> servico) async {
    for (var i=0; i<tabelaServico.length; i++) {
      if (tabelaServico[i]['nome'] == servico['nome']){
        tabelaServico[i]['telefone'] = servico['telefone'];
        tabelaServico[i]['modelo'] = servico['modelo'];
        tabelaServico[i]['servico'] = servico['servico'];
        tabelaServico[i]['data'] = servico['data'];
        tabelaServico[i]['valor'] = servico['valor'];
        break;
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> servico) async {
    tabelaServico.remove(servico);
  }

  @override
  Future<void> incluir(Map<String, dynamic> servico) async {
    tabelaServico.add(servico);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String nome) async{
    for (var servico in tabelaServico) {
      if (servico['nome'] == nome){
        return servico;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>?>?> selecionarTodos() async {
    return tabelaServico;
  }

}