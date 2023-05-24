import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  // const body({super.key});
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        Container(
          height: size.height * .2,
          child: Stack(
            children: <Widget>[
              Container(
                height: size.height * .2 - 20,
                decoration: const BoxDecoration(
                  color: kPrimaryColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36),
                    bottomRight: Radius.circular(36),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
