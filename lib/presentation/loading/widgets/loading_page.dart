import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_pokedex/core/styles.dart';
import 'package:flutter_pokedex/presentation/loading/widgets/pokeball_widget.dart';

class LoadingPage extends StatefulWidget {
  const LoadingPage({super.key, required this.progress});
  final int progress;

  @override
  State<LoadingPage> createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const PokeballWidget(),
          const SizedBox(height: 20),
          Text(
            '${Labels.loading} ${widget.progress}%',
            style: TextStyles.title,
          ),
        ],
      ),
    );
  }
}
