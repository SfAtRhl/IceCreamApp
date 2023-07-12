import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../models/Product.dart';

import '../../../constants.dart';

class ItemCardFood extends StatefulWidget {
  final Product product;
  final Function press;
  const ItemCardFood({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);

  @override
  State<ItemCardFood> createState() => _ItemCardFoodState();
}

class _ItemCardFoodState extends State<ItemCardFood> {
  bool isfav;
  @override
  void initState() {
    isfav = widget.product.isfav == "true";
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: kDefaultPaddin / 2, vertical: kDefaultPaddin / 4),
      child: GestureDetector(
        onTap: widget.press,
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
                      tag: "${widget.product.id}",
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                widget.product.image,
                              )),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultPaddin / 4,
                        vertical: kDefaultPaddin / 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.product.title,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500),
                              ),
                              GestureDetector(
                                child: SvgPicture.asset(
                                  "assets/icons/${isfav ? "heart" : "heart_1"}.svg",
                                  height: 15,
                                  color: isfav ? kPink : kGrey,
                                ),
                                onTap: () {
                                  setState(() {
                                    isfav = !isfav;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 200,
                          child: Row(
                            children: [
                              Text(
                                "\$10.99",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kTextColor,
                                ),
                              ),
                              Text(
                                " \$${widget.product.price}",
                                style: const TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: kTextColor,
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
