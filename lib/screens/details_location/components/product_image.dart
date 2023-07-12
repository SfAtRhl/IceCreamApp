import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../models/Location.dart';

class ProductImage extends StatelessWidget {
  const ProductImage({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Location product;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          child: Hero(
            tag: "${product.id}",
            child: Image.asset(
              product.image,
              fit: BoxFit.fill,
            ),
          ),
        ),
        Positioned(
          top: 10,
          right: 0,
          left: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              color: kPink,
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: kPink.withOpacity(0.2),
                                  spreadRadius: 1,
                                  blurRadius: 5,
                                  offset: Offset(0, 4),
                                ),
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                "assets/icons/map-pin-1.svg",
                                color: Colors.white,
                              ),
                            )),
                        const SizedBox(width: kDefaultPaddin / 2),
                        Text("See location on map"),
                      ],
                    ),
                    SvgPicture.asset("assets/icons/forward.svg"),
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
