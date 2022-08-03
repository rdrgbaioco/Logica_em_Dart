import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cep/app.dart';
import 'package:my_cep/cubits/cep_cubit.dart';
import 'package:my_cep/cubits/theme_cubit.dart';
import 'package:my_cep/repository/cep_repository.dart';

void main() {
  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ThemeCubit(Theme.of(context).brightness),
        ),
        BlocProvider(
            create: (context) => CepCubit(
              repository: Repository(dio: Dio()),
            ),
        ),
      ],
      child: const MyCep(),
    ),
  );
}

