import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_app_bar.dart';
import 'package:minimal_shop/components/my_cart_tile.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void payButtonPressed() {}

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    String totalPrice = context.watch<Shop>().totalPrice.toStringAsFixed(2);
    return Scaffold(
      appBar: const MyAppBar(title: 'Cart'),
      body: cart.isEmpty
          ? const Center(child: Text("You haven't added anything to your cart"))
          : Column(
              children: [
                Expanded(
                  flex: 15,
                  child: ListView.builder(
                    itemCount: cart.length,
                    itemBuilder: (context, index) {
                      final item = cart[index];
                      return MyCartTile(item: item);
                    },
                  ),
                ),
                const Spacer(),
                Container(
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Theme.of(context).colorScheme.primary,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Total price: \$$totalPrice",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inverseSurface,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: payButtonPressed,
                        icon: const Icon(
                          Icons.shopping_cart_checkout_rounded,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
