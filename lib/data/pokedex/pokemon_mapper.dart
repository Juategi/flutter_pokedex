import 'package:flutter_pokedex/data/pokedex/pokemon_dto.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';

class PokemonMapper {
  static Pokemon toDomain(PokemonDto pokemonDto) {
    return Pokemon(
      id: pokemonDto.id!,
      name: pokemonDto.name!,
      weight: pokemonDto.weight!,
      height: pokemonDto.height!,
      imageUrl: pokemonDto.sprites!.frontDefault!,
      types: pokemonDto.types!
          .map((type) => PokemonType.fromString(type.type!.name!))
          .toList(),
    );
  }
}
