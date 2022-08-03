import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cep/repository/cep_repository.dart';
import 'package:my_cep/resources/models/cep_model.dart';

part 'cep_state.dart';

class CepCubit extends Cubit<CepState> {
  final Repository repository;
  CepCubit({required this.repository}) : super(CepState(cep: CEPModel()));

  void getCep(String cep) async {
    try {
      final response = await get(cep);
      debugPrint(response.data.toString());
      emit(state.copyWith(cep: CEPModel.fromJson(response.data)));
    } catch (e) {
      emit(CepError(cep: CEPModel(), error: e.toString()));
    }
  }

  Future get(String cep) async {
    final dio = Dio();
    try {
      var response = await dio.get(
          'https://viacep.com.br/ws/$cep/json/'
      );
      debugPrint(response.statusCode.toString());
      debugPrint(response.data.toString());
    } on DioError catch (e) {
      debugPrint(e.toString());
      return debugPrint(e.toString());
    }

    return await dio.get('https://viacep.com.br/ws/$cep/json/');
  }
}
