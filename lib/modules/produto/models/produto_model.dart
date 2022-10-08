import 'dart:convert';

class ProdutoModel {
  String? numero;
  String? nomepeca;
  String? fornecedor;
  String? precopeca;
  String? descricao;

  ProdutoModel({
    this.numero,
    this.nomepeca,
    this.fornecedor,
    this.precopeca,
    this.descricao,
  });

  ProdutoModel copyWith({
    String? numero,
    String? nomepeca,
    String? fornecedor,
    String? precopeca,
    String? descricao,
  }) {
    return ProdutoModel(
      numero: numero ?? this.numero,
      nomepeca: nomepeca ?? this.nomepeca,
      fornecedor: fornecedor ?? this.fornecedor,
      precopeca: precopeca ?? this.precopeca,
      descricao: descricao ?? this.descricao,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numero': numero,
      'nomepeca': nomepeca,
      'fornecedor': fornecedor,
      'precopeca': precopeca,
      'descricao': descricao,
    };
  }

  factory ProdutoModel.fromMap(Map<String, dynamic> map) {
    return ProdutoModel(
      numero: map['numero'],
      nomepeca: map['nomepeca'],
      fornecedor: map['fornecedor'],
      precopeca: map['precopeca'],
      descricao: map['descricao'],
    );
  }

  String toJson() => json.encode(toMap());

  factory ProdutoModel.fromJson(String source) => ProdutoModel.fromMap(json.decode(source));

  @override
  String toString() => 'ProdutoModel(numero: $numero, nomepeca: $nomepeca, fornecedor: $fornecedor, precopeca: $precopeca, descricao: $descricao)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ProdutoModel &&
      other.numero == numero &&
      other.nomepeca == nomepeca &&
      other.fornecedor == fornecedor &&
      other.precopeca == precopeca &&
      other.descricao == descricao;
  }

  @override
  int get hashCode => numero.hashCode ^ nomepeca.hashCode ^ fornecedor.hashCode ^ precopeca.hashCode ^ descricao.hashCode;

  bool isValid(){
    if (numero == null || numero!.isEmpty){
      throw Exception('Numero não informado.');
    }
    if (nomepeca == null || nomepeca!.isEmpty){
      throw Exception('Nome da peça não informado.');
    }
    if (fornecedor == null || fornecedor!.isEmpty){
      throw Exception('Fornecedor não informado.');
    }
    if (precopeca == null || precopeca!.isEmpty){
      throw Exception('Preço não informado.');
    }
    if (descricao == null || descricao!.isEmpty){
      throw Exception('Descrição não informada.');
    }
    return true;
  }
}
