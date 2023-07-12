import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Header extends StatefulWidget {
  const Header({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  int selectedIndex = 0;
  int rating = 2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.product.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Colors.black,
              ),
            ),
              Row(
                children: [
            for (int i = 1; i <= rating; i++)

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: SvgPicture.asset(
                      "assets/icons/Star.svg",
                      color: kPink,
                    ),
                  ),
                  for (int i =rating; i <3; i++)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1),
                    child: SvgPicture.asset(
                      "assets/icons/Star.svg",
                      color: kGrey.withOpacity(0.4),
                    ),
                  ),
                ],
              )
            
            
            
            
            
            
            
            
          ],
        ),
        const SizedBox(height: kDefaultPaddin / 2),
        Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "\$ ${widget.product.price.toString()}",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 16,
                color: kGreen,
              ),
            )),
        const SizedBox(height: kDefaultPaddin / 2),
      ],
    );
  }
}
