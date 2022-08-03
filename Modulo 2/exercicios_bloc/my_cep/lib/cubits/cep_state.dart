part of 'cep_cubit.dart';

class CepState {
  final CEPModel cep;

  CepState({
    required this.cep
  });

  CepState copyWith({
    CEPModel? cep,
  }) {
    return CepState(
      cep: cep ?? this.cep,
    );
  }
}

class CepError extends CepState {
  final String error;

  CepError({
    required this.error,
    required CEPModel cep,
  }) : super(cep: cep);
}