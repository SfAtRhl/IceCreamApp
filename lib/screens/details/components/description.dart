import 'package:flutter/material.dart';
import '../../../constants.dart';
import '../../../models/Product.dart';

class Description extends StatelessWidget {
  const Description({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          product.description,
          style: const TextStyle(height: 1.5),
        ),
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
               padding: const EdgeInsets.only(left:14.0),
               child: Center(
                
                 child: TextField(
                   cursorColor: kTextColor,
                   onChanged: (value) {},
                   decoration: InputDecoration(
                     hintText: 'leave a note for the restaurant',
                    
                     contentPadding: EdgeInsets.symmetric(
                       vertical: 11,
                     ),
                     border: InputBorder.none,
                   ),
                 ),
               ),
             )),
       ),
      ],
    );
  }
}
