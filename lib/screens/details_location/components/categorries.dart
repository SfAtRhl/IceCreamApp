import 'package:flutter/material.dart';

import '../../../constants.dart';

class Categories extends StatefulWidget {
  const Categories({Key key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<String> categories = [
    "Ice Creams",
    "Snaks ",
    "Coffee",
    "Sweet Cakes",
  ];

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, index) => buildCategory(index),
      ),
    );
  }

  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 10),
        child: Container(
          
          decoration: BoxDecoration(
            color: selectedIndex == index ? kBleu : kLightGrey,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0,horizontal: 12),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: selectedIndex == index ? FontWeight.w500: FontWeight.w400,
                    color: selectedIndex == index ? Colors.white : kGrey,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
