import 'package:flutter/widgets.dart';
import 'package:flutter_pokedex/core/strings.dart';
import 'package:flutter_svg/svg.dart';

class PokeballWidget extends StatefulWidget {
  const PokeballWidget({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PokeballWidgetState createState() => _PokeballWidgetState();
}

class _PokeballWidgetState extends State<PokeballWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * 3.141592653589793,
          child: child,
        );
      },
      child: SvgPicture.asset(
        Images.pokeball,
        height: 75,
        width: 75,
      ),
    );
  }
}
