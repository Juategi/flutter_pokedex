import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_pokedex/domain/pokedex/pokemon_entity.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PokedexTile extends StatelessWidget {
  const PokedexTile({super.key, required this.pokemon});
  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: pokemon.types.first.color,
          borderRadius: BorderRadius.circular(16),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Row(
          children: [
            SvgPicture.network(
              pokemon.imageUrl,
              height: 80,
              width: 80,
            ),
            const SizedBox(width: 8),
            Text(pokemon.name),
            SvgPicture.asset(
              Images.pokeballIcon,
              width: 80,
              color: Colors.white.withOpacity(0.3),
            ),
          ],
        ),
      ),
    );
  }
}
