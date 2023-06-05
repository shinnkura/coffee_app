import 'package:flutter/material.dart';

import '../constants.dart';

class NewCoffeeCard extends StatelessWidget {
  const NewCoffeeCard({
    Key? key,
    required this.image,
    required this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * .8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage('assets/images/image_1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
