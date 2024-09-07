import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_drawer.dart';
import 'package:minimal_shop/components/my_product_tile.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    final products = context.watch<Shop>().shop;
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart_page');
            },
            icon: const Icon(Icons.shopping_cart_rounded),
          ),
        ],
        centerTitle: true,
        title: Text(
          'Minimal Shop',
          style: TextStyle(
            color: Theme.of(context).colorScheme.inverseSurface,
          ),
        ),
        backgroundColor: Colors.transparent,
        foregroundColor: Theme.of(context).colorScheme.inverseSurface,
      ),
      drawer: const MyDrawer(),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: Center(
              child: Text(
                'Pick from a selected list of premium products',
                style: TextStyle(color: Theme.of(context).colorScheme.inverseSurface),
              ),
            ),
          ),
          SizedBox(
            height: 650,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                final product = products[index];
                return MyProductTile(product: product);
              },
            ),
          )
        ],
      ),
    );
  }
}
