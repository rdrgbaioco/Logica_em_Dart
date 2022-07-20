import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/blocs/theme_cubit.dart';
import 'package:pokemon/resources/strings.dart';
import 'package:pokemon/resources/theme.dart';
import 'package:pokemon/topics/t05_calling_poke_api/t05_pokemon_home.dart';

class PokemonApp extends StatelessWidget {
  const PokemonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ThemeCubit(
        WidgetsBinding.instance?.window.platformBrightness ?? Brightness.light,
      ),
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, themeModeState) {
          return MaterialApp(
            title: Strings.appName,
            themeMode: themeModeState,
            theme: PokemonTheme.light,
            darkTheme: PokemonTheme.dark,
            home: const PokemonHome(),
          );
        },
      ),
    );
  }
}
