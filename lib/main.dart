import 'package:flutter/material.dart';
import 'package:flutter_pokedex/domain/pokedex/pokedex_repository.dart';
import 'package:flutter_pokedex/injection.dart';
import 'package:get_it/get_it.dart';

void main() {
  Injection().setUp();
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pokédex Code Challenge',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    GetIt.instance<PokedexRepository>().getAllPokemons();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Pokédex Code Challenge'),
      ),
      body: const Center(child: Text('Lee el README para comenzar')),
    );
  }
}
