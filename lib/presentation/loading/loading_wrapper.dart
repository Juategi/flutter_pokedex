import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pokedex/application/loading/loading_cubit.dart';
import 'package:flutter_pokedex/core/colors.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_pokedex/core/styles.dart';
import 'package:flutter_pokedex/presentation/loading/widgets/loading_page.dart';

class LoadingWrapper extends StatefulWidget {
  const LoadingWrapper({super.key});

  @override
  State<LoadingWrapper> createState() => _LoadingWrapperState();
}

class _LoadingWrapperState extends State<LoadingWrapper> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundLoading,
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: primaryColor,
            width: 10,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              Images.pokedexTitle,
              width: 200,
              height: 200,
            ),
            BlocBuilder<LoadingCubit, LoadingState>(
              builder: (context, state) {
                if (state is Loading) {
                  return LoadingPage(
                    progress: state.progress,
                  );
                } else if (state is Loaded) {
                  Future.delayed(
                    const Duration(milliseconds: 500),
                    () =>
                        // ignore: use_build_context_synchronously
                        Navigator.pushReplacementNamed(context, Routes.pokedex),
                  );
                  return const LoadingPage(
                    progress: 100,
                  );
                } else if (state is LoadingError) {
                  return Center(
                    child: Text(
                      state.message,
                      style: TextStyles.error,
                    ),
                  );
                }
                return const SizedBox();
              },
            ),
          ],
        ),
      ),
    );
  }
}
