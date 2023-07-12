import 'package:flutter/material.dart';

class Location {
  final String image, title, rating, location, dist;
  final int id;
  final Color color;
  final List<Map<String, String>> products;
  Location({
    this.id,
    this.location = "Buyayuk shop",
    this.image,
    this.title,
    this.products,
    this.rating = "4.2",
    this.dist,
    this.color,
  });
}

List<Location> Locations_v2 = [
  Location(
    id: 14,
    title: "Jawi Resto",
    dist: "1.4",
    location: "Pasuruan",
    image: "assets/images/14.png",
    color: const Color(0xFF989493),
  ),
  Location(
    id: 15,
    title: "Blembem Coffee",
    dist: "2.4",
    location: "Nort Surabaya",
    image: "assets/images/15.png",
    color: const Color(0xFFE6B398),
  ),
  Location(
    id: 11,
    title: "Jawi Resto",
    rating: "4.5",
    dist: "3.4",
    image: "assets/images/11.png",
    color: const Color(0xFF3D82AE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
