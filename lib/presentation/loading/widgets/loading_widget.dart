import 'package:flutter/material.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_pokedex/core/styles.dart';
import 'package:flutter_pokedex/presentation/loading/widgets/pokeball_widget.dart';

class LoadingWidget extends StatefulWidget {
  const LoadingWidget({super.key, required this.progress});
  final int progress;

  @override
  State<LoadingWidget> createState() => _LoadingWidgetState();
}

class _LoadingWidgetState extends State<LoadingWidget> {
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
