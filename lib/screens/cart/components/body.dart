import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/models/Product.dart';

import '../../../constants.dart';
import 'card_destination.dart';
import 'card_order.dart';
import 'footer.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kDefaultPaddin,
        ),
        child: Column(
          children: <Widget>[
            const SizedBox(height: kDefaultPaddin / 2),
            CardDestination(),
            const SizedBox(height: kDefaultPaddin / 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your Order"),
                SvgPicture.asset("assets/icons/plus.svg"),
              ],
            ),
            const SizedBox(height: kDefaultPaddin / 2),
            SizedBox(
              height: 380,
              child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return CardOrder(
                      product: products[index],
                    );
                  }),
            ),
            const SizedBox(height: kDefaultPaddin / 2),
            Footer(),
          ],
        ),
      ),
    );
  }
}
