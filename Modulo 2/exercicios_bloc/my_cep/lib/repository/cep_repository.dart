import 'package:dio/dio.dart';


class Repository {
  final Dio dio;
  Repository({required this.dio});

  Future getCep(String cep) async {
    return await dio.get('https://viacep.com.br/ws/$cep/json/');
  }
}
