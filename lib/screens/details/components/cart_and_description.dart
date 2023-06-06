import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartAndDescription extends StatelessWidget {
  const CartAndDescription({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: size.width / 2,
          height: 84,
          child: TextButton(
            onPressed: () {},
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(
                  Colors.white.withOpacity(0.8)),
              backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
              ),
            ),
            child: const Text('カートに入れる'),
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: const Text('説明を見る'),
          ),
        ),
      ],
    );
  }
}
