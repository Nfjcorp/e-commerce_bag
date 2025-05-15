import 'package:flutter/material.dart';
import 'package:shopping_bag/utils/color_text.dart';
import 'package:shopping_bag/widgets/body.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBuilder(),
      body: Body(),
    );
  }

  AppBar appBuilder() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.search, color: kTextColor),
        ),

        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart_outlined),
        ),

        SizedBox(width: kDefaultPadding),
      ],
    );
  }
}
