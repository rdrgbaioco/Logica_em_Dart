import 'package:json_annotation/json_annotation.dart';

part 'cep_model.g.dart';

// flutter pub run build_runner build --delete-conflicting-outputs

@JsonSerializable()
class CEPModel {
  @JsonKey(defaultValue: 'Não Especificado')
  late String? cep, lagradouro, complemento, bairro, localidade, uf, ibge, gia, ddd, siafi;

  CEPModel({
    this.cep,
    this.lagradouro,
    this.complemento,
    this.bairro,
    this.localidade,
    this.uf,
    this.ibge,
    this.gia,
    this.ddd,
    this.siafi,
  });

  factory CEPModel.fromJson(Map<String, dynamic> json) => _$CEPModelFromJson(json);

  Map<String, dynamic> toJson() => _$CEPModelToJson(this);

}