import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_drawer_item.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        children: [
          ListTile(
            trailing: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.dark_mode_rounded),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(bottom: 50.0),
            child: const Icon(
              Icons.shopping_bag_rounded,
              size: 150,
            ),
          ),
          MyDrawerItem(
            text: "Profile",
            icon: Icons.person,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerItem(
            text: "Shop",
            icon: Icons.home_rounded,
            onTap: () => Navigator.pop(context),
          ),
          MyDrawerItem(
            text: "Cart",
            icon: Icons.shopping_cart_rounded,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/cart_page');
            },
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 25.0),
            child: MyDrawerItem(
              text: "Exit",
              icon: Icons.logout_rounded,
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('/intro_page', (route) => false),
            ),
          )
        ],
      ),
    );
  }
}
