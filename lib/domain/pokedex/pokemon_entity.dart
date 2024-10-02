import 'dart:ui';

import 'package:flutter/material.dart';

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
  normal(Color(0xFFA4ACAF)),
  fire(Color(0xFFFD7D24)),
  water(Color(0xFF4592C4)),
  electric(Color(0xFFFBC02D)),
  grass(Color(0xFF9BCC50)),
  ice(Color(0xFF51C4E7)),
  fighting(Color(0xFFD56723)),
  poison(Color(0xFFB97FC9)),
  ground(Color(0xFFE0C068)),
  flying(Color(0xFFA98FF3)),
  psychic(Color(0xFFF366B9)),
  bug(Color(0xFFA6B91A)),
  rock(Color(0xFFB6A136)),
  ghost(Color(0xFF735797)),
  dragon(Color(0xFF6F35FC)),
  dark(Color(0xFF705746)),
  steel(Color(0xFFB7B7CE)),
  fairy(Color(0xFFD685AD));

  const PokemonType(this.color);

  final Color color;

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

  @override
  String toString() {
    return name[0].toUpperCase() + name.substring(1);
  }
}
