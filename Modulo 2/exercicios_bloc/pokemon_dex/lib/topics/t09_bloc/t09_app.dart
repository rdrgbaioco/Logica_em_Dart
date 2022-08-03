import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/blocs/pokemon/pokemon_bloc.dart';
import 'package:pokemon/blocs/pokemon/pokemon_events.dart';
import 'package:pokemon/blocs/theme_cubit.dart';
import 'package:pokemon/topics/t09_bloc/t09_pokemon_home.dart';
import 'package:pokemon/repositories/pokemon_repository.dart';
import 'package:pokemon/resources/strings.dart';
import 'package:pokemon/resources/theme.dart';

class PokemonApp extends StatelessWidget {
  const PokemonApp({
    Key? key,
    required this.pokemonRepository,
  }) : super(key: key);

  final PokemonRepository pokemonRepository;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider.value(
      value: pokemonRepository,
      child: BlocProvider(
        create: (_) => ThemeCubit(WidgetsBinding.instance.window.platformBrightness,),
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, themeModeState) {
            return MaterialApp(
              title: Strings.appName,
              themeMode: themeModeState,
              theme: PokemonTheme.light,
              darkTheme: PokemonTheme.dark,
              home: BlocProvider(
                create: (context) => PokemonBloc(pokemonRepository)..add(PokemonLoaded()),
                child: const PokemonHome(),
              ),
            );
          },
        ),
      ),
    );
  }
}
