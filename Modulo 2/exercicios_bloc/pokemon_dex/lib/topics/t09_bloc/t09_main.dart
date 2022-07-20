import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokemon/clients/poke_api_client.dart';
import 'package:pokemon/repositories/pokemon_repository.dart';
import 'package:pokemon/topics/t09_bloc/t09_app.dart';

void main() async {
  final pokeApiClient = PokeApiClient(http.Client());
  final pokemonRepository = PokemonRepository(pokeApiClient);
  runApp(PokemonApp(pokemonRepository: pokemonRepository));
}
