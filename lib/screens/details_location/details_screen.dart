import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:foodapp/models/Location.dart';
import '../../constants.dart';
import '../details_location/components/body.dart';

class DetailsLocationScreen extends StatelessWidget {
  final Location product;

  const DetailsLocationScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(product: product),
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
    );
  }
}
