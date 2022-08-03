// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CEPModel _$CEPModelFromJson(Map<String, dynamic> json) => CEPModel(
      cep: json['cep'] as String? ?? 'Não Especificado',
      lagradouro: json['lagradouro'] as String? ?? 'Não Especificado',
      complemento: json['complemento'] as String? ?? 'Não Especificado',
      bairro: json['bairro'] as String? ?? 'Não Especificado',
      localidade: json['localidade'] as String? ?? 'Não Especificado',
      uf: json['uf'] as String? ?? 'Não Especificado',
      ibge: json['ibge'] as String? ?? 'Não Especificado',
      gia: json['gia'] as String? ?? 'Não Especificado',
      ddd: json['ddd'] as String? ?? 'Não Especificado',
      siafi: json['siafi'] as String? ?? 'Não Especificado',
    );

Map<String, dynamic> _$CEPModelToJson(CEPModel instance) => <String, dynamic>{
      'cep': instance.cep,
      'lagradouro': instance.lagradouro,
      'complemento': instance.complemento,
      'bairro': instance.bairro,
      'localidade': instance.localidade,
      'uf': instance.uf,
      'ibge': instance.ibge,
      'gia': instance.gia,
      'ddd': instance.ddd,
      'siafi': instance.siafi,
    };
