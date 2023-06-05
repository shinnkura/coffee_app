import 'dart:ffi';

import 'package:coffee_app/components/recomend_coffee.dart';
import 'package:coffee_app/components/title_with_more_bttn.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/constants.dart';

import 'header_with_searchbox.dart';
import 'new_coffee_card.dart';

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
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                NewCoffeeCard(
                  image: 'assets/images/image_1.png',
                  press: () {},
                ),
                NewCoffeeCard(
                  image: 'assets/images/image_1.png',
                  press: () {},
                ),
                NewCoffeeCard(
                  image: 'assets/images/image_1.png',
                  press: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
