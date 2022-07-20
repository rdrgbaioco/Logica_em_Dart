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
  final String primaryType;
  final String? secondaryType;

  @override
  String toString() => 'Pokémon $number: $name';
}
