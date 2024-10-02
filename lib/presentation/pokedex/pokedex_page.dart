import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/application/pokedex/pokedex_cubit.dart';
import 'package:flutter_pokedex/presentation/pokedex/widgets/pokedex_tile.dart';
import 'package:get_it/get_it.dart';

class PokedexPage extends StatefulWidget {
  const PokedexPage({super.key});

  @override
  State<PokedexPage> createState() => _PokedexPageState();
}

class _PokedexPageState extends State<PokedexPage> {
  @override
  void initState() {
    GetIt.I.get<PokedexCubit>().getPokemons();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokedex'),
      ),
      body: BlocBuilder<PokedexCubit, PokedexState>(
        builder: (context, state) {
          if (state is PokedexLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is PokedexLoaded) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: SizedBox(
                  width: 800,
                  child: LayoutBuilder(
                    builder: (context, BoxConstraints constraints) {
                      int crossAxisCount = (constraints.maxWidth / 250).floor();
                      crossAxisCount = crossAxisCount == 0 ? 1 : crossAxisCount;
                      return GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          childAspectRatio: 1.2,
                        ),
                        itemCount: state.pokemons.length,
                        itemBuilder: (context, index) {
                          return PokedexTile(pokemon: state.pokemons[index]);
                        },
                      );
                    },
                  ),
                ),
              ),
            );
          } else if (state is PokedexError) {
            return Center(
              child: Text(state.message),
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}
