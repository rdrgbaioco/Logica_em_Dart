import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pokemon/blocs/theme_cubit.dart';
import 'package:pokemon/components/gradient_pokeball.dart';
import 'package:pokemon/resources/gradients.dart';
import 'package:pokemon/resources/strings.dart';

class PokemonHome extends StatelessWidget {
  const PokemonHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Positioned.fill(
          child: ColoredBox(
            color: theme.scaffoldBackgroundColor,
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            GradientPokeball(
              gradient: PokemonGradients.pokeball(
                  context.read<ThemeCubit>().state == ThemeMode.dark),
              height: 210.0,
            ),
          ],
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              Strings.appName,
              style: theme.textTheme.headlineMedium,
            ),
            elevation: 0.0,
            toolbarHeight: kToolbarHeight + 30.0,
            actions: [
              IconButton(
                onPressed: BlocProvider.of<ThemeCubit>(context).toggleThemeMode,
                icon: BlocBuilder<ThemeCubit, ThemeMode>(
                  builder: (context, themeModeState) {
                    return Icon(
                      themeModeState == ThemeMode.light
                          ? Icons.dark_mode_outlined
                          : Icons.light_mode_outlined,
                    );
                  },
                ),
              )
            ],
          ),
          body: Container(),
        ),
      ],
    );
  }
}
