import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({Key key, this.isSmaller=false}) : super(key: key);
  final bool isSmaller;
  @override
  _CartCounterState createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 4),
      child: Row(
        children: <Widget>[
          buildOutlineButton(
            icon: Icons.remove,
            press: () {
              if (numOfItems > 1) {
                setState(() {
                  numOfItems--;
                });
              }
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
            child: Text(
              
              numOfItems.toString().padLeft(2, "0"),
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          buildOutlineButton(
              icon: Icons.add,
              press: () {
                setState(() {
                  numOfItems++;
                });
              }),
        ],
      ),
    );
  }

  DottedBorder buildOutlineButton({IconData icon, Function press}) {
    return DottedBorder(
      dashPattern: [3, 3],
      borderType: BorderType.Circle,
      color: kGrey,
      strokeWidth: 1,
      child: Container(
        width: widget.isSmaller? 20:40,
        height: widget.isSmaller ? 20 : 40,
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          icon: Icon(icon),
          onPressed: press,
          color: kGrey,
          iconSize: widget.isSmaller ? 15 : 20,
        ),
      ),
    );
  }
}
