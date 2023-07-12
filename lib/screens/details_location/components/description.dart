import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';
import '../../../models/Location.dart';

class CheckReward extends StatelessWidget {
  const CheckReward({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Location product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
              height: 55,
              decoration: BoxDecoration(
                color: kLightGrey,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Center(
                  
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Check the reward in this resto"),
                const SizedBox(height: kDefaultPaddin / 4),

                          Text(
                            "16 Reward",
                            style: TextStyle(
                              color: kBleu,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        "assets/icons/forward_2.svg",
                        color: kGrey,
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
