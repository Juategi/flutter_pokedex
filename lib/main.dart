import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/application/loading/loading_cubit.dart';
import 'package:flutter_pokedex/injection.dart';
import 'package:flutter_pokedex/presentation/loading/loading_page.dart';
import 'package:get_it/get_it.dart';

void main() async {
  await Injection().setUp();
  runApp(const Pokedex());
}

class Pokedex extends StatelessWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => GetIt.I.get<LoadingCubit>()..fetchData(),
        ),
      ],
      child: MaterialApp(
        title: 'Pokédex Code Challenge',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const LoadingPage(),
      ),
    );
  }
}
