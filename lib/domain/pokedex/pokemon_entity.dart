class Pokemon {
  int id;
  String name;
  String imageUrl;
  int weight;
  int height;
  List<PokemonType> types;

  Pokemon({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.weight,
    required this.height,
    required this.types,
  });
}

enum PokemonType {
  normal,
  fire,
  water,
  electric,
  grass,
  ice,
  fighting,
  poison,
  ground,
  flying,
  psychic,
  bug,
  rock,
  ghost,
  dragon,
  dark,
  steel,
  fairy;

  static PokemonType fromString(String type) {
    switch (type) {
      case 'normal':
        return PokemonType.normal;
      case 'fire':
        return PokemonType.fire;
      case 'water':
        return PokemonType.water;
      case 'electric':
        return PokemonType.electric;
      case 'grass':
        return PokemonType.grass;
      case 'ice':
        return PokemonType.ice;
      case 'fighting':
        return PokemonType.fighting;
      case 'poison':
        return PokemonType.poison;
      case 'ground':
        return PokemonType.ground;
      case 'flying':
        return PokemonType.flying;
      case 'psychic':
        return PokemonType.psychic;
      case 'bug':
        return PokemonType.bug;
      case 'rock':
        return PokemonType.rock;
      case 'ghost':
        return PokemonType.ghost;
      case 'dragon':
        return PokemonType.dragon;
      case 'dark':
        return PokemonType.dark;
      case 'steel':
        return PokemonType.steel;
      case 'fairy':
        return PokemonType.fairy;
      default:
        return PokemonType.normal;
    }
  }
}
