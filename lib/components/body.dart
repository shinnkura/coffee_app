import 'package:coffee_app/components/title_with_more_bttn.dart';
import 'package:flutter/material.dart';
import 'package:coffee_app/constants.dart';

import 'header_with_searchbox.dart';

class Body extends StatelessWidget {
  // const body({super.key});
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(
            title: 'おすすめ',
            press: () {},
          ),
          SizedBox(
            width: size.width * .8,
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding / 2,
                    bottom: kDefaultPadding * 2.5,
                  ),
                  height: 200,
                  width: 150,
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
                    children: [
                      Container(
                        height: 170,
                        decoration: const BoxDecoration(
                          borderRadius:
                              BorderRadius.vertical(top: Radius.circular(16)),
                          image: DecorationImage(
                            image: AssetImage("assets/images/image_1.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const Expanded(
                        // child: Container(
                        //   padding: const EdgeInsets.only(
                        //       bottom: kDefaultPadding / 2),
                        // alignment: Alignment.center,
                        child: Text(
                          'カフェラテ',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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
