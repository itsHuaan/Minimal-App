import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_dialog.dart';
import 'package:minimal_shop/models/product.dart';
import 'package:minimal_shop/models/shop.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final Product item;
  const MyCartTile({
    super.key,
    required this.item,
  });
  void removeFromCart(BuildContext context, Product item) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text("Remove this item from your cart?"),
        actions: [
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("Cancel"),
          ),
          MaterialButton(
            onPressed: () {
              Navigator.pop(context);
              context.read<Shop>().removeFromCart(item);
              showDialog(
                context: context,
                builder: (context) => const MyDialog(
                  text: "Removed from your cart!",
                  icon: Icons.check_circle_outlined,
                ),
              );
            },
            child: const Text("Remove"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String price = item.price.toString();
    return ListTile(
      leading: Image.asset(item.imagePath),
      title: Text(item.name),
      subtitle: Text('\$$price'),
      trailing: IconButton(
        onPressed: () => removeFromCart(context, item),
        icon: const Icon(Icons.remove_rounded),
      ),
    );
  }
}
