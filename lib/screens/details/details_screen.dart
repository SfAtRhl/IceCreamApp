import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../constants.dart';
import '../../models/Product.dart';
import '../../screens/details/components/body.dart';
import '../cart/cart_screen.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
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
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 16, color: kBlack),
          ),
          Text(
            "Go to restaurant",
            style: TextStyle(
                color: kBleu, fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ],
      ),
      actions: <Widget>[
        Center(
          child: Stack(
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  'assets/icons/cart.svg',
                ),
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(
                      ),
                    )),
                
              ),
              Positioned(
                top: 1,
                right: 3,
                child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: kPink,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text(
                        "2",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    )),
              )
            ],
          ),
        ),
        const SizedBox(width: kDefaultPaddin / 4),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          icon: SvgPicture.asset(
            'assets/icons/heart_1.svg',
          ),
          onPressed: () {},
        ),
        const SizedBox(width: kDefaultPaddin),
      ],
    );
  }
}
