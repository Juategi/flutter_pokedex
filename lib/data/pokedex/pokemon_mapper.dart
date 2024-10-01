import 'package:flutter_pokedex/data/pokedex/entities/pokemon_dto.dart';
import 'package:flutter_pokedex/data/pokedex/entities/pokemon_hive.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';

class PokemonMapper {
  static PokemonHive toHiveDto(PokemonDto pokemonDto) {
    return PokemonHive(
      id: pokemonDto.id!,
      name: pokemonDto.name!,
      weight: pokemonDto.weight!,
      height: pokemonDto.height!,
      imageUrl: pokemonDto.sprites!.frontDefault!,
      types: pokemonDto.types!.map((type) => type.type!.name!).toList(),
    );
  }

  static Pokemon toDomain(PokemonHive pokemonDto) {
    return Pokemon(
      id: pokemonDto.id,
      name: pokemonDto.name,
      weight: pokemonDto.weight,
      height: pokemonDto.height,
      imageUrl: pokemonDto.imageUrl,
      types:
          pokemonDto.types.map((type) => PokemonType.fromString(type)).toList(),
    );
  }
}
