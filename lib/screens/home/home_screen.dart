import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

import '../../components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kPrimaryColor,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: Image.asset("assets/icons/menu.png"),
      ),
    );
  }
}
