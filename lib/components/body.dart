import 'dart:ffi';

import 'package:coffee_app/components/recomend_coffee.dart';
import 'package:coffee_app/components/title_with_more_bttn.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/constants.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  // const body({super.key});
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'おすすめ',
            press: () {},
          ),
          const RecomendCoffee(),
          TitleWithMoreBtn(
            title: '新着',
            press: () {},
          ),
          NewCoffeeCard(
            image: 'assets/images/image_1.png',
            press: () {},
          ),
        ],
      ),
    );
  }
}

class NewCoffeeCard extends StatelessWidget {
  const NewCoffeeCard({
    Key key,
    this.image,
    this.press,
  }) : super(key: key);
  final String image;
  final Function press;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
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
