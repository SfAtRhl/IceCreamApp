import 'package:flutter/material.dart';
import 'package:foodapp/screens/details/components/header.dart';

import '../../../models/Product.dart';

import '../../../constants.dart';
import '../../cart/components/button.dart';
import 'cart_counter.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            child: SizedBox(
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: kDefaultPaddin,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
            ),
            child: Column(
              children: <Widget>[
                const SizedBox(height: kDefaultPaddin / 2),
                const SizedBox(height: kDefaultPaddin / 2),
                Header(product: product),
                const SizedBox(height: kDefaultPaddin / 2),
                Description(product: product),
                const SizedBox(height: kDefaultPaddin / 2),
                Row(
                  children: [
                    const CartCounter(),
                    Button(
                      title: "Continue",
                    ),
                  ],
                ),
                const SizedBox(height: kDefaultPaddin / 2),
              ],
            ),
          )
        ],
      ),
    );
  }
}

