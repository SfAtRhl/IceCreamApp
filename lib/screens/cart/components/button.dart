import 'package:flutter/material.dart';

import '../../../constants.dart';

class Button extends StatelessWidget {
  Button({Key key, this.title, this.press}) : super(key: key);

  final String title;
  void Function() press = () {};
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 40,
        child: TextButton(
          style: TextButton.styleFrom(
            elevation: 4,
            foregroundColor: Colors.black,
            backgroundColor: kBleu,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)),
          ),
          onPressed: press,
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 17,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
