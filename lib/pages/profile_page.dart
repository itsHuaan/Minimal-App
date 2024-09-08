import 'package:flutter/material.dart';
import 'package:minimal_shop/components/my_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: MyAppBar(title: 'Profile'),
    );
  }
}
