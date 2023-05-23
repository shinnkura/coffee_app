import 'package:coffee_app/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          // icon: Image.asset("assets/icons/menu.png"),
          // Todo: アイコンを表示できない問題を解決。そもそも、leadingウィジェットが機能しているか確認する。
          icon: const ImageIcon(AssetImage("assets/icons/menu.png")),
        ),
      ),
    );
  }
}
