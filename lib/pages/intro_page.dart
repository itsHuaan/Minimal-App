import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_button.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*const Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: ShoppingCartAnimatedIcon(),
            ),*/
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Icon(
                Icons.shopping_bag_rounded,
                color: Theme.of(context).colorScheme.inversePrimary,
                size: 150,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 2.0),
              child: Text(
                'Minimal Shop',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 25.0),
              child: Text(
                'Premium Quality Products',
                style: TextStyle(fontWeight: FontWeight.w300),
              ),
            ),
            SizedBox(
              width: 70.0,
              height: 70.0,
              child: MyButton(
                onTap: () {
                  Navigator.pushNamed(context, '/shop_page');
                },
                widget: const Icon(
                  Icons.arrow_forward_rounded,
                  size: 40.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
