import 'package:flutter/material.dart';
import 'package:shopping_bag/models/product.dart';
import 'package:shopping_bag/utils/color_text.dart';
import 'package:shopping_bag/views/detail.dart';
import 'package:shopping_bag/widgets/category.dart';
import 'package:shopping_bag/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(kDefaultPadding),
          child: Text(
            'Women',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),

        Categories(),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.75,
              crossAxisSpacing: kDefaultPadding,
              mainAxisSpacing: kDefaultPadding,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return ItemCard(
                product: product['product'],
              );
            },
          ),
        ),
      ],
    );
  }
}
