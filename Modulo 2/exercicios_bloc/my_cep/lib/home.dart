import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_cep/cubits/cep_cubit.dart';
import 'package:my_cep/cubits/theme_cubit.dart';
import 'package:my_cep/repository/cep_repository.dart';
import 'package:my_cep/resources/theme.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  TextEditingController cepController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          IconButton(
            icon: BlocBuilder<ThemeCubit, ThemeMode>(
              builder: (context, themeModeState) {
                return Icon(
                  themeModeState == ThemeMode.light
                      ? Icons.dark_mode_outlined
                      : Icons.light_mode_outlined,
                );
              },
            ),
            onPressed: () {
              BlocProvider.of<ThemeCubit>(context).toggleThemeMode();
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const Padding(padding: EdgeInsets.only(top: 30),),
            Text(
              'Busque seu CEP:',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
              child: TextFormField(
                controller: cepController,
                decoration: InputDecoration(
                  labelText: 'CEP',
                  labelStyle: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent[100]!,
                      width: 2,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.deepPurpleAccent[100]!,
                      width: 2,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(padding: EdgeInsets.only(top: 30),),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              color: Colors.deepPurpleAccent[100]!,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Resultado',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
            BlocBuilder<CepCubit, CepState>(
                builder: (context, state) {
                  return Text(state.cep.localidade ?? '',
                      style: Theme.of(context).textTheme.titleMedium);
                }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          await Repository(dio: Dio()).getCep('78303040');
          //BlocProvider.of<CepCubit>(context).getCep(cepController.text);
        },
        tooltip: 'Pesquisar',
        child: const Icon(Icons.search_rounded),
      ),
    );
  }
}