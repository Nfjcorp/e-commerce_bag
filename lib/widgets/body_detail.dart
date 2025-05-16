import 'package:flutter/material.dart';
import 'package:shopping_bag/models/product.dart';
import 'package:shopping_bag/widgets/product_title_with_image.dart';

class BodyDetail extends StatefulWidget {
  const BodyDetail({super.key, required this.product});
  final Product product;

  @override
  State<BodyDetail> createState() => _BodyDetailState();
}

class _BodyDetailState extends State<BodyDetail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                ),

                ProductTitleWithImage(product: widget.product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
