import 'datasource_ds.dart';


class MemoriaDataSource extends DataSourceBase {
  static List<Map<String, dynamic>> tabelaUsuario = [];

  @override
  Future<void> alterar(Map<String, dynamic> usuario) async {
    for (var i=0; i<tabelaUsuario.length; i++) {
      if (tabelaUsuario[i]['email'] == usuario['email']){
        tabelaUsuario[i]['nome'] = usuario['nome'];
        tabelaUsuario[i]['senha'] = usuario['senha'];
        break;
      }
    }
  }

  @override
  Future<void> excluir(Map<String, dynamic> usuario) async {
    tabelaUsuario.remove(usuario);
  }

  @override
  Future<void> incluir(Map<String, dynamic> usuario) async {
    tabelaUsuario.add(usuario);
  }

  @override
  Future<Map<String, dynamic>?> selecionar(String email) async{
    for (var usuario in tabelaUsuario) {
      if (usuario['email'] == email){
        return usuario;
      }
    }
    return null;
  }

  @override
  Future<List<Map<String, dynamic>>> selecionarTodos() async {
    return tabelaUsuario;
  }

}