import 'package:flutter/material.dart';
import 'package:shopping_bag/models/product.dart';
import 'package:shopping_bag/utils/color_text.dart';
import 'package:shopping_bag/utils/helpers.dart';
import 'package:shopping_bag/views/cart_screen.dart';
import 'package:shopping_bag/views/detail.dart';
import 'package:shopping_bag/widgets/category.dart';
import 'package:shopping_bag/widgets/item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBuilder(context),
      body: Column(
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
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder:
                              (context) => Detail(
                                product: Product(
                                  imagePath: product['imagePath'],
                                  title: product['title'],
                                  description: product['description'],
                                  price: product['price'],
                                  size: product['size'],
                                  id: product['size'],
                                  color: product['color'],
                                ),
                              ),
                        ),
                      );
                    },
                    name: product['title'],
                    price: product['price'],
                    imagePath: product['imagePath'],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

AppBar appBuilder(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
    actions: [
      IconButton(onPressed: () {}, icon: Icon(Icons.search, color: kTextColor)),

      IconButton(
        onPressed: () {
          navigateToNextPage(context, CartScreen());
        },
        icon: Icon(Icons.shopping_bag),
      ),

      SizedBox(width: kDefaultPadding),
    ],
  );
}
