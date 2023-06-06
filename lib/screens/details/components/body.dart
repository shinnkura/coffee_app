import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

import 'cart_and_description.dart';
import 'image_and_icon.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ImageAndIcons(size: size),
          const TitleAndPrice(
            title: "BLUEMOUTEN",
            country: "Jamaica",
            price: 880,
          ),
          CartAndDescription(size: size),
          const SizedBox(height: kDefaultPadding * 2),
        ],
      ),
    );
  }
}
