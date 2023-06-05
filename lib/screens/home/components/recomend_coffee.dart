import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../details/details_screen.dart';

class RecomendCoffee extends StatelessWidget {
  const RecomendCoffee({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecomendePlantCard(
            image: "assets/images/image_1.png",
            title: "BlueMouten",
            price: 1000,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          RecomendePlantCard(
            image: "assets/images/image_1.png",
            title: "BlueMouten",
            price: 1000,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
          RecomendePlantCard(
            image: "assets/images/image_1.png",
            title: "BlueMouten",
            price: 1000,
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailsScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class RecomendePlantCard extends StatelessWidget {
  const RecomendePlantCard({
    super.key,
    required this.image,
    required this.title,
    required this.price,
    required this.press,
  });

  final String image, title;
  final int price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // width: size.width * .8,
      // height: size.height * .8,
      child: Column(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              left: kDefaultPadding,
              top: kDefaultPadding / 2,
              bottom: kDefaultPadding * 2.5,
            ),
            height: 250,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  offset: const Offset(0, 10),
                  blurRadius: 50,
                  color: kPrimaryColor.withOpacity(0.23),
                ),
              ],
            ),
            child: Column(
              children: <Widget>[
                GestureDetector(
                  onTap: press,
                  child: Container(
                    height: 190,
                    decoration: BoxDecoration(
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(16)),
                      image: DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(
                          left: 10,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: "$title\n".toUpperCase(),
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                              TextSpan(
                                text: "\$$price",
                                style: const TextStyle(
                                  color: kPrimaryColor,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.add_shopping_cart),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
