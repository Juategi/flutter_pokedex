import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/application/loading/loading_cubit.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key});

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadingCubit, LoadingState>(builder: (context, state) {
      if (state is Loading) {
        return Scaffold(
          body: Center(
            child: CircularProgressIndicator(
              value: state.progress / 100,
            ),
          ),
        );
      } else if (state is Loaded) {
        return const Scaffold(
          body: Center(
            child: Text('Loaded'),
          ),
        );
      } else if (state is LoadingError) {
        return Scaffold(
          body: Center(
            child: Text(state.message),
          ),
        );
      }
      return const SizedBox();
    });
  }
}
