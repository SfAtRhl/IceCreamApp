import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';
import '../../details/components/cart_counter.dart';

class CardOrder extends StatefulWidget {
  const CardOrder({
    Key key,
    this.product,
  }) : super(key: key);
  final Product product;

  @override
  State<CardOrder> createState() => _CardOrderState();
}

class _CardOrderState extends State<CardOrder> {
  bool show = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: kGrey.withOpacity(0.1),
                spreadRadius: 1,
                blurRadius: 1,
                offset: Offset(0, 2),
              ),
            ],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      border:
                          Border.all(color: kGrey.withOpacity(0.3), width: 1.2),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text("1x"),
                    )),
                Container(
                  margin: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    widget.product.image,
                    height: 52,
                  ),
                ),
                const SizedBox(width: kDefaultPaddin / 2),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              width: 170,
                              child: Text(
                                widget.product.title,
                                style: TextStyle(
                                  color: kBlack,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                          Text("\$${widget.product.price}"),
                        ],
                      ),
                      SizedBox(
                        width: 210,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              if (show)
                                CartCounter(
                                  isSmaller: true,
                                ),
                              TextButton(
                                child: Text(show ? "Save" : "Edit"),
                                style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size(50, 30),
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                    alignment: Alignment.centerLeft),
                                onPressed: () {
                                  setState(() {
                                    show = !show;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: kDefaultPaddin / 2),
      ],
    );
  }
}
