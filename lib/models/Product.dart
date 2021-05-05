import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Office code",
      price: 234,
      size: 14,
      description: dummyText,
      image: "assets/images/bag_1.png",
      color: Color(0xFF3d82AE)),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 211,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Hang Top",
      price: 115,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Belt Bag",
      price: 334,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Hang Top",
      price: 254,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_8.png",
      color: Color(0xFFFB7883)),
  Product(
      id: 6,
      title: "Laptop Bag",
      price: 278,
      size: 12,
      description: dummyText,
      image: "assets/images/bag_6.png",
      color: Color(0xFFAEAEAE)),
];

String dummyText =
    "This is not just a bag it's a key get Success, Your dream bag can be yours just make a wish and wait for hang it on your sholder.This is not just a bag it's a key get Success, Your dream bag can be yours just make a wish and wait for hang it on your sholder.";
