import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import 'components/body.dart';

class CartScreen extends StatelessWidget {
  

  const CartScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        
        
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: kBlack,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Your cart is ready to go",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: kBlack),
          ),
          Text(
            "2 Menu",
            style: TextStyle(
                color: kBleu, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
    );
  }
}
