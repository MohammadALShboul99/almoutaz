import 'package:flutter/material.dart';

class Product {
  final String image, title;
  final int id, courses;
  final Color color;
  Product({
    required this.image,
    required this.title,
    required this.courses,
    required this.color,
    required this.id,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "English ",
    image: "assets/images/1.jpg",
    color: const Color(0xFF71b8ff),
    courses: 16,
  ),
  Product(
    id: 2,
    title: "english Numbers",
    image: "assets/images/1.jpg",
    color: const Color(0xFFff6374),
    courses: 22,
  ),
  Product(
    id: 3,
    title: "Finance",
    image: "assets/images/1.jpg",
    color: const Color(0xFFffaa5b),
    courses: 15,
  ),
];
