import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemCardCategorie extends StatelessWidget {
  final Map<String, String> product;
  final Function press;
  const ItemCardCategorie({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin / 2, vertical: kDefaultPaddin / 4),
      child: GestureDetector(
        onTap: press,
        child: Container(
          
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 130,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        product["img"],
                      )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: kDefaultPaddin / 3,
                    vertical: kDefaultPaddin / 3,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "${product["name"]} -",
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            color: kTextLightColor),
                      ),
                      Text(
                        " ${product["count"]} item",
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
