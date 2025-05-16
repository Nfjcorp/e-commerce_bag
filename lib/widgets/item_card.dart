import 'package:flutter/material.dart';
import 'package:shopping_bag/utils/color_text.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    super.key,
    required this.name,
    required this.price,
    required this.imagePath,
    this.onTap,
  });
  final String imagePath;
  final int price;
  final String name;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Image.asset(imagePath, fit: BoxFit.cover),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(name, style: TextStyle(color: kTextColor)),
          ),

          Text('\$ $price', style: TextStyle(fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
