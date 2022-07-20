import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/clients/poke_api_client.dart';
import 'package:pokemon/topics/t07_repository/t07_pokemon_repository.dart';
import 'package:pokemon/topics/t05_calling_poke_api/t05_app.dart';

void main() async {
  final pokeApiClient = PokeApiClient(http.Client());
  final pokemonRepository = PokemonRepository(pokeApiClient);

  final pokemons = await pokemonRepository.getPokemons(page: 1);
  debugPrint(pokemons.toString());

  runApp(const PokemonApp());
}
