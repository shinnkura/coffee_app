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
                child: Row(
                  children: <Widget>[
                    Text(
                      'test',
                      // style: TextStyle(
                      //   color: Colors.white,
                      //   fontWeight: FontWeight.bold,
                      // ),
                      // style: theme.of(
                      //       context,
                      //     )
                      //     .TextStyle
                      //     .bodyText1
                      //     .copyWith(
                      //       color: Colors.white,
                      //       fontWeight: FontWeight.bold,
                      //     ),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 90,
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  height: 54,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.23),
                      ),
                    ],
                  ),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                            hintText: "Search",
                            hintStyle: TextStyle(
                              color: kPrimaryColor.withOpacity(.5),
                            ),
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            // suffixIcon: Icon(Icons.search),
                          ),
                        ),
                      ),
                      Icon(
                        Icons.search,
                        color: kPrimaryColor.withOpacity(.5),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
