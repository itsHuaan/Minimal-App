import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_drawer_item.dart';
import 'package:minimal_shop/themes/themes.dart';
import 'package:provider/provider.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0.0),
      ),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 50.0,
            ),
            child: const Icon(
              Icons.shopping_bag_rounded,
              size: 150,
            ),
          ),
          MyDrawerItem(
            text: "Profile",
            icon: Icons.person,
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, '/profile_page');
            },
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
            child: ListTile(
              leading: const Icon(Icons.logout_rounded),
              title: const Text("Exit"),
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil('/intro_page', (route) => false),
              trailing: IconButton(
                onPressed: () {
                  themeProvider.changeTheme();
                },
                icon: Icon(themeProvider.isDarkMode ? Icons.dark_mode_rounded : Icons.light_mode_rounded),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
