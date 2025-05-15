import 'package:flutter/material.dart';
import 'package:shopping_bag/models/product.dart';
import 'package:shopping_bag/utils/color_text.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({super.key, required this.product, this.press});

  final Product product;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: EdgeInsets.all(kDefaultPadding),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Image.asset(fit: BoxFit.cover, products[0]['imagePath']),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
          child: Text('', style: TextStyle(color: kTextColor)),
        ),

        Text(
          style: TextStyle(fontWeight: FontWeight.bold),
          '',
        ),
      ],
    );
  }
}
