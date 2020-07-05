import 'package:flutter/material.dart';

class Product {

  final String title, image,description;
  final int price , size , id;
  final Color color;

  Product({this.title,this.image,this.description,this.size,this.color,this.id,this.price});

}

List<Product> products = [
  Product(
      id: 1,
      title: "Silk Saree",
      price: 1305,
      size: 12,
      description: 'Trendy Collection with Eye Catching Design Cobalt Blue Colour Minakari Silk Unstitched Weightless Sharee for Women',
      image: "assets/images/bag_1.png",
      color: Color(0xFF3D82AE)
  ),
  Product(
      id: 2,
      title: "Belt Bag",
      price: 234,
      size: 8,
      description: dummyText,
      image: "assets/images/bag_2.png",
      color: Color(0xFFD3A984)
  ),
  Product(
      id: 3,
      title: "Hang Top",
      price: 234,
      size: 10,
      description: dummyText,
      image: "assets/images/bag_3.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Old Fashion",
      price: 234,
      size: 11,
      description: dummyText,
      image: "assets/images/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Japani Silk Saree",
      price: 1200,
      size: 12,
      description: 'Saree is a very common dress in this subcontinental area like Bangladesh. This saree is made of silk fabrics and also including a matching blouse piece.',
      image: "assets/images/bag_5.png",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Office Code",
    price: 234,
    size: 12,
    description: dummyText,
    image: "assets/images/bag_6.png",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";