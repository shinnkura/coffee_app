import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

import 'icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: kDefaultPadding * 3,
                ),
                child: Column(
                  children: <Widget>[
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        padding: const EdgeInsets.symmetric(
                          horizontal: kDefaultPadding,
                        ),
                        onPressed: () {},
                        icon: const Icon(
                          Icons.arrow_back_ios,
                        ),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(
                      icon: "assets/icons/umbrella.png",
                    ),
                    const IconCard(
                      icon: "assets/icons/sun.png",
                    ),
                    const IconCard(
                      icon: "assets/icons/temperature.png",
                    ),
                    const IconCard(
                      icon: "assets/icons/ground.png",
                    ),
                  ],
                ),
              ),
            ),
            Container(
                height: size.height * 0.8,
                width: size.width * 0.75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: const DecorationImage(
                    image: AssetImage('assets/images/image_1.png'),
                    fit: BoxFit.cover,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
