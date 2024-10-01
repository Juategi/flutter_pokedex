import 'package:hive/hive.dart';

part 'pokemon_hive.g.dart';

@HiveType(typeId: 1)
class PokemonHive extends HiveObject {
  @HiveField(0)
  int id;

  @HiveField(1)
  String name;

  @HiveField(2)
  String imageUrl;

  @HiveField(3)
  int weight;

  @HiveField(4)
  int height;

  @HiveField(5)
  List<String> types;

  PokemonHive({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.weight,
    required this.height,
    required this.types,
  });
}
