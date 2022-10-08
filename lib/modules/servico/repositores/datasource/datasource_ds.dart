abstract class DataSourceBase{

  Future<void> incluir(Map<String, dynamic> servico);
  Future<void> excluir(Map<String, dynamic> servico);
  Future<void> alterar(Map<String, dynamic> servico);
  Future<Map<String, dynamic>?> selecionar(String nome);
  Future<List<Map<String, dynamic>?>?> selecionarTodos();
}