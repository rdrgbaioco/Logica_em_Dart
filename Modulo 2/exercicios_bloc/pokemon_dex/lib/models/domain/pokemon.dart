import 'package:pokemon/models/enum/pokemon_type.dart';

class Pokemon {
  const Pokemon({
    required this.id,
    required this.number,
    required this.name,
    required this.image,
    required this.primaryType,
    this.secondaryType,
  });

  final int id;
  final String number;
  final String name;
  final String image;
  final PokemonType primaryType;
  final PokemonType? secondaryType;

  @override
  String toString() => 'Pokémon $number: $name | Types: $primaryType $secondaryType\n';
}
