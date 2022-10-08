abstract class DataSourceBase{

  Future<void> incluir(Map<String, dynamic> produto);
  Future<void> excluir(Map<String, dynamic> produto);
  Future<void> alterar(Map<String, dynamic> produto);
  Future<Map<String, dynamic>?> selecionar(String cpf);
  Future<List<Map<String, dynamic>?>?> selecionarTodos();
}