// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_hive.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class PokemonHiveAdapter extends TypeAdapter<PokemonHive> {
  @override
  final int typeId = 1;

  @override
  PokemonHive read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return PokemonHive(
      id: fields[0] as int,
      name: fields[1] as String,
      imageUrl: fields[2] as String,
      weight: fields[3] as int,
      height: fields[4] as int,
      types: (fields[5] as List).cast<String>(),
    );
  }

  @override
  void write(BinaryWriter writer, PokemonHive obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.name)
      ..writeByte(2)
      ..write(obj.imageUrl)
      ..writeByte(3)
      ..write(obj.weight)
      ..writeByte(4)
      ..write(obj.height)
      ..writeByte(5)
      ..write(obj.types);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PokemonHiveAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
