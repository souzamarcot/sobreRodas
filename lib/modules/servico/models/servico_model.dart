import 'dart:convert';

class ServicoModel {
  String? nome;
  String? telefone;
  String? modelo;
  String? servico;
  String? data;
  String? valor;

  ServicoModel({
    this.nome,
    this.telefone,
    this.modelo,
    this.servico,
    this.data,
    this.valor,
  });

  ServicoModel copyWith({
    String? nome,
    String? telefone,
    String? modelo,
    String? servico,
    String? data,
    String? valor,
  }) {
    return ServicoModel(
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      modelo: modelo ?? this.modelo,
      servico: servico ?? this.servico,
      data: data ?? this.data,
      valor: valor ?? this.valor,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'nome': nome,
      'telefone': telefone,
      'modelo': modelo,
      'servico': servico,
      'data': data,
      'valor': valor,
    };
  }

  factory ServicoModel.fromMap(Map<String, dynamic> map) {
    return ServicoModel(
      nome: map['nome'],
      telefone: map['telefone'],
      modelo: map['modelo'],
      servico: map['servico'],
      data: map['data'],
      valor: map['valor'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ServicoModel.fromJson(String source) => ServicoModel.fromMap(json.decode(source));

  @override
  String toString() => 'ServicoModel(nome: $nome, telefone: $telefone, modelo: $modelo, servico: $servico, data: $data, valor: $valor)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ServicoModel &&
      other.nome == nome &&
      other.telefone == telefone &&
      other.modelo == modelo &&
      other.servico == servico &&
      other.data == data &&
      other.valor == valor;
  }

  @override
  int get hashCode => nome.hashCode ^ telefone.hashCode ^ modelo.hashCode ^ servico.hashCode ^ data.hashCode ^ valor.hashCode;

  bool isValid(){
    if (nome == null || nome!.isEmpty){
      throw Exception('nome não informado.');
    }
    if (telefone == null || telefone!.isEmpty){
      throw Exception('Telefone não informado.');
    }
    if (modelo == null || modelo!.isEmpty){
      throw Exception('Modelo de bicicleta não informado.');
    }
    if (servico == null || servico!.isEmpty){
      throw Exception('Serviço não informado.');
    }
    if (data == null || data!.isEmpty){
      throw Exception('Data não informada.');
    }
    if (valor == null || valor!.isEmpty){
      throw Exception('Valor não informado.');
    }
    return true;
  }
}
