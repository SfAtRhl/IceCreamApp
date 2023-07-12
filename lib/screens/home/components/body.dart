import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/Location.dart';
import '../../../models/Product.dart';
import '../../../screens/details/details_screen.dart';

import '../../details_location/details_screen.dart';
import 'item_card_categorie.dart';
import 'item_card_food.dart';
import 'item_card_store.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {"name": "Sweets", "img": "assets/images/3.png", "count": "243"},
      {"name": "Snack", "img": "assets/images/5.png", "count": "251"},
      {"name": "Beverages", "img": "assets/images/4.png", "count": "261"},
    ];
    return Padding(
      padding: const EdgeInsets.only(top: 100.0),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: products.length,
                    itemBuilder: (context, index) => ItemCardCategorie(
                          product: categories[index],
                          press: () {},
                        )),
              ),
              upperSection(
                iconName: "heart",
                title: "Popular",
                smTitle: "Let’s choose, and enjoy the food",
                color: "0xFFFA5D5D",
              ),
              const SizedBox(height: kDefaultPaddin / 3),
              Container(
                height: 270,
                child: ListView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: products_v2.length,
                    itemBuilder: (context, index) => Center(
                          child: ItemCardFood(
                            product: products_v2[index],
                            press: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => DetailsScreen(
                                    product: products_v2[index],
                                  ),
                                )),
                          ),
                        )),
              ),
              const SizedBox(height: kDefaultPaddin / 3),
              upperSection(
                iconName: "map-pin",
                title: "Near You",
                smTitle: "Jakarta, Indonesia",
                color: "0xFF54A5DA",
              ),
              const SizedBox(height: kDefaultPaddin / 3),
              Center(
                child: Wrap(
                  spacing: 2.0,
                  runSpacing: 2.0,
                  children: [
                    for (int index = 0; index < Locations_v2.length; index++)
                      ItemCardStore(
                        product: Locations_v2[index],
                        press: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsLocationScreen(
                              product: Locations_v2[index],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              const SizedBox(height: kDefaultPaddin * 3.5),
            ],
          ),
        ),
      ),
    );
  }
}

class upperSection extends StatelessWidget {
  const upperSection({
    Key key,
    this.iconName,
    this.title,
    this.smTitle,
    this.color,
  }) : super(key: key);
  final String iconName, title, smTitle, color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPaddin,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(int.parse("$color")),
                  borderRadius: BorderRadius.circular(4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(int.parse("$color")).withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 2,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SvgPicture.asset(
                    "assets/icons/$iconName.svg",
                    height: 20,
                  ),
                ),
              ),
              const SizedBox(width: kDefaultPaddin / 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(smTitle,
                        style: TextStyle(fontSize: 12, color: kTextColor)),
                  ),
                ],
              ),
            ],
          ),
          IconButton(
            padding: EdgeInsets.zero,
            constraints: BoxConstraints(),
            onPressed: () {},
            icon: SvgPicture.asset(
              "assets/icons/forward.svg",
            ),
          ),
        ],
      ),
    );
  }
}
