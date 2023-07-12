import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';


class CardDestination extends StatelessWidget {
  const CardDestination({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: kGrey.withOpacity(0.3), width: 1.2),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Sent To"),
                  SvgPicture.asset("assets/icons/forward_2.svg"),
                ],
              ),
              const SizedBox(height: kDefaultPaddin / 2),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(2.0),
                    child: Image.asset(
                      "assets/images/location.png",
                      height: 52,
                    ),
                  ),
                  const SizedBox(width: kDefaultPaddin / 2),
                  Expanded(
                      child: Text(
                    "242nd St Tonganoxie, Kansas (KS), 66086",
                    style: TextStyle(
                      color: kBlack,
                      fontWeight: FontWeight.w500,
                    ),
                  )),
                ],
              ),
            ],
          ),
        ));
  }
}
