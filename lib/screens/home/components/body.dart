import 'package:coffee_app/screens/home/components/new_coffee_card.dart';
import 'package:coffee_app/screens/home/components/recomend_coffee.dart';
import 'package:coffee_app/screens/home/components/title_with_more_bttn.dart';
import 'package:flutter/material.dart';

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
