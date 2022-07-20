import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/clients/poke_api_client.dart';
import 'package:pokemon/topics/t05_calling_poke_api/t05_app.dart';

void main() async {
  final pokeApiClient = PokeApiClient(http.Client());

  final pokemonListDto = await pokeApiClient.getPokemonList(offset: 0);
  debugPrint(pokemonListDto.results!.map((pokemon) => pokemon.name).join(', '));

  final pokemonDto =
      await pokeApiClient.getPokemon(name: pokemonListDto.results![0].name!);
  debugPrint(pokemonDto.types!.map((types) => types.type!.name).join(', '));

  runApp(const PokemonApp());
}
