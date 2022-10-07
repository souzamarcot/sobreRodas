import 'dart:convert';

class ClienteModel {
  String? cpf;
  String? nome;
  String? telefone;
  String? email;
  String? endereco;

  ClienteModel({
    this.cpf,
    this.nome,
    this.telefone,
    this.email,
    this.endereco,
  });

  ClienteModel copyWith({
    String? cpf,
    String? nome,
    String? telefone,
    String? email,
    String? endereco,
  }) {
    return ClienteModel(
      cpf: cpf ?? this.cpf,
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      email: email ?? this.email,
      endereco: endereco ?? this.endereco,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cpf': cpf,
      'nome': nome,
      'telefone': telefone,
      'email': email,
      'endereco': endereco,
    };
  }

  factory ClienteModel.fromMap(Map<String, dynamic> map) {
    return ClienteModel(
      cpf: map['cpf'],
      nome: map['nome'],
      telefone: map['telefone'],
      email: map['email'],
      endereco: map['endereco'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ClienteModel.fromJson(String source) => ClienteModel.fromMap(json.decode(source));

  @override
  String toString() => 'ClienteModel(cpf: $cpf, nome: $nome, telefone: $telefone, email: $email, endereco: $endereco)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ClienteModel &&
      other.cpf == cpf &&
      other.nome == nome &&
      other.telefone == telefone &&
      other.email == email &&
      other.endereco == endereco;
  }

  @override
  int get hashCode => cpf.hashCode ^ nome.hashCode ^ telefone.hashCode ^ email.hashCode ^ endereco.hashCode;

  bool isValid(){
    if (cpf == null || cpf!.isEmpty){
      throw Exception('CPF não informado.');
    }
    if (nome == null || nome!.isEmpty){
      throw Exception('Nome não informado.');
    }
    if (telefone == null || telefone!.isEmpty){
      throw Exception('Telefone não informada.');
    }
    if (email == null || email!.isEmpty){
      throw Exception('Email não informada.');
    }
    if (endereco == null || endereco!.isEmpty){
      throw Exception('Endereço não informada.');
    }
    return true;
  }
}
