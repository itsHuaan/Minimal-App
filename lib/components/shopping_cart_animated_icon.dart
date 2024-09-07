import 'package:flutter/material.dart';

class ShoppingCartAnimatedIcon extends StatefulWidget {
  const ShoppingCartAnimatedIcon({super.key});

  @override
  State<ShoppingCartAnimatedIcon> createState() => _ShoppingCartAnimatedIconState();
}

class _ShoppingCartAnimatedIconState extends State<ShoppingCartAnimatedIcon> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(); // This makes the animation loop

    // Uncomment below if you want the animation to stop at some point
    // _controller.repeat(period: Duration(seconds: 3));
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
      child: Icon(
        Icons.shopping_cart,
        size: 100,
        color: Theme.of(context).colorScheme.inverseSurface,
      ),
      builder: (context, child) {
        return Transform.rotate(
          angle: _controller.value * 2.0 * 3.14, // Full rotation
          child: child,
        );
      },
    );
  }
}
