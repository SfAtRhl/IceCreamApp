import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:foodapp/models/Location.dart';

import 'package:foodapp/screens/details_location/components/categorries.dart';

import '../../../models/Product.dart';

import '../../../constants.dart';
import 'description.dart';
import 'header.dart';
import 'item_card_food.dart';
import 'product_image.dart';

class Body extends StatelessWidget {
  final Location product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            child: ProductImage(product: product),
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
                CheckReward(product: product),
                const SizedBox(height: kDefaultPaddin / 2),
                Categories(),
                const SizedBox(height: kDefaultPaddin / 2),
                SizedBox(
                  height: 310,
                  child: ListView.builder(
                      scrollDirection: Axis.vertical,
                      itemCount: products.length,
                      itemBuilder: (context, index) => ItemCardFood(
                            product: products[index],
                            press: () {},
                          )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

