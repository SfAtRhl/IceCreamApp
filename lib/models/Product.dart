import 'package:flutter/material.dart';

class Product {
  final String image, title, description, isfav, rating, location, price;
  final int size, id;
  final Color color;
  final List<String> categories;
  Product({
    this.id,
    this.location = "Buyayuk shop",
    this.isfav,
    this.image,
    this.title,
    this.categories,
    this.rating = "4.2",
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Ice Cream Yellow",
    rating: "4.5",
    price: "12.99",
    size: 12,
    description: dummyText,
    image: "assets/images/1.png",
    color: const Color(0xFF3D82AE),
    categories: [
      "Fruits",
      "Ice cream",
    ],
  ),
  Product(
    id: 2,
    title: "Pink Ice",
    price: "13.99",
    size: 8,
    isfav: "true",
    description: dummyText,
    image: "assets/images/2.png",
    color: const Color(0xFFD3A984),
    categories: [
      "Fruits",
      "Ice cream",
    ],
  ),
  Product(
    id: 3,
    title: "Blue Ice",
    price: "9.99",
    size: 8,
    isfav: "true",
    description: dummyText,
    image: "assets/images/3.png",
    color: const Color(0xFFD3A984),
    categories: [
      "Fruits",
      "Ice cream",
    ],
  ),
];

List<Product> products_v2 = [
  Product(
    id: 5,
    title: "Hobo Bag",
    price: "7.99",
    size: 10,
    description: dummyText,
    image: "assets/images/3.png",
    color: const Color(0xFF989493),
    categories: [
      "Fruits",
      "Ice cream",
    ],
  ),
  Product(
    id: 4,
    title: "Queen Mini Bag",
    price: "10.99",
    size: 11,
    description: dummyText,
    image: "assets/images/4.png",
    color: const Color(0xFFE6B398),
    categories: [
      "Sweet Cakes",
      "Donut",
    ],
  ),
  Product(
    id: 6,
    title: "Pink Bag",
    rating: "4.5",
    price: "11.99",
    size: 12,
    description: dummyText,
    image: "assets/images/1.png",
    color: const Color(0xFF3D82AE),
    categories: [
      "Fruits",
      "Ice cream",
    ],
  ),
];

String dummyText =
    "Nibh faucibus pellentesque ac viverra maecenas ultricies in nisl, faucibus pellentesque ac viverra ecenas ultricies in nisl";
