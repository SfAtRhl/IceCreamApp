

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/Product.dart';

import '../../../constants.dart';

class ItemCardFood extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCardFood({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {"name": "Sweet Cakes", "color": "0xFF27AE60"},
      {"name": "Donut", "color": "0xFFFA5D5D"},
      {"name": "Ice cream", "color": "0xFF2D9CDB"},
      {"name": "Fruits", "color": "0xFFF2994A"},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin / 2, vertical: kDefaultPaddin / 4),
      child: GestureDetector(
        onTap: press,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(kDefaultPaddin / 4),
              height: 80,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: kTextColor.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 5,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Hero(
                      tag: "${product.id}",
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                product.image,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin / 4,
                        vertical: kDefaultPaddin / 3),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          product.title,
                          style: const TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          width: 150,
                          height: 15,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: product.categories?.length,
                            itemBuilder: (context, index) {
                              for (var i = 0; i < categories.length; i++) {
                                if (categories[i]["name"] ==
                                    product.categories[index]) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(int.parse(
                                                categories[i]["color"]))
                                            .withOpacity(0.2),
                                        borderRadius: BorderRadius.circular(25),
                                      ),
                                      child: Center(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 10.0),
                                          child: Text(
                                            product.categories[index]
                                                .toString(),
                                            style: TextStyle(
                                              color: Color(int.parse(
                                                  categories[i]["color"])),
                                              fontSize: 10,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                              }
                              return SizedBox(); 
                            },
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SvgPicture.asset(
                                    "assets/icons/map-pin-1.svg",
                                    height: 10,
                                  ),
                                  Text(
                                    " ${product.location}",
                                    style: const TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: kTextColor,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              Text(
                                "\$ ${product.price}",
                                style: const TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
