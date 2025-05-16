import 'package:flutter/material.dart';
import 'package:shopping_bag/models/product.dart';
import 'package:shopping_bag/utils/helpers.dart';
import 'package:shopping_bag/views/cart_screen.dart';
import 'package:shopping_bag/widgets/body_detail.dart';

class Detail extends StatelessWidget {
  final Product product;
  const Detail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: product.color,
        title: Text(
          product.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'Poppins',
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(color: Colors.white, Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(color: Colors.white, Icons.search),
          ),
          IconButton(
            onPressed: () {
              navigateToNextPage(context, CartScreen());
            },
            icon: Icon(color: Colors.white, Icons.shopping_bag_outlined),
          ),
        ],
      ),
      body: BodyDetail(product: product),
    );
  }
}
