abstract class DataSourceBase{

  Future<void> incluir(Map<String, dynamic> cliente);
  Future<void> excluir(Map<String, dynamic> cliente);
  Future<void> alterar(Map<String, dynamic> cliente);
  Future<Map<String, dynamic>?> selecionar(String cpf);
  Future<List<Map<String, dynamic>?>?> selecionarTodos();
}