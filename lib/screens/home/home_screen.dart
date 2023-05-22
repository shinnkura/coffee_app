import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        // elevation: 0,
        // leading: IconButton(
        //     onPressed: onPressed,
        //     icon: SvgPicture.asset("asetts/icons/menu.svg")),
      ),
    );
  }
}
