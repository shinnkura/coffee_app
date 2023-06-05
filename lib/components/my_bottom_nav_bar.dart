import 'package:flutter/material.dart';

import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        // color: kPrimaryColor,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -10),
            blurRadius: 35,
            color: kPrimaryColor.withOpacity(0.38),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            // icon: Image.asset("assets/icons/home.png"),
            icon: const Icon(Icons.home, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            // icon: Image.asset("assets/icons/heart.png"),
            icon: const Icon(Icons.favorite, color: Colors.black),
          ),
          IconButton(
            onPressed: () {},
            // icon: Image.asset("assets/icons/user.png"),
            icon: const Icon(Icons.person, color: Colors.black),
          ),
        ],
      ),
    );
  }
}
