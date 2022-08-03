import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cep/cubits/theme_cubit.dart';
import 'package:my_cep/home.dart';
import 'package:my_cep/resources/theme.dart';

class MyCep extends StatelessWidget {
  const MyCep({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeModeState) {
          return MaterialApp(
            themeMode: themeModeState,
            theme: BlocAppTheme.light,
            darkTheme: BlocAppTheme.dark,
            home: const MyHomePage(title: 'My CEP',),
          );
        }
    );
  }
}
