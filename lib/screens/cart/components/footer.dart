import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'button.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "Delivery Fee ",
              style: TextStyle(color: kGrey, fontSize: 12),
            ),
            Text(
              "\$ 4,00",
              style: TextStyle(
                  color: kBlack, fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPaddin / 2),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Total Cost",
              style: TextStyle(
                  color: kBlack, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            Text(
              "\$ 36,00",
              style: TextStyle(
                  color: kBleu, fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: kDefaultPaddin / 2),
        Row(
          children: [
            Button(
              title: "Continue Pay - \$36,00",
            ),
          ],
        ),
        const SizedBox(height: kDefaultPaddin / 2),
      ],
    );
  }
}
