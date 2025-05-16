import 'package:flutter/material.dart';

class Product {
  final String imagePath, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.price,
    required this.size,
    required this.id,
    required this.color,
  });
}

List<Map<String, dynamic>> products = [
  {
    'imagePath': 'assets/images/bleu.jpg',
    'title': 'Office Code',
    'description': 'dummyText',
    'price': 234,
    'size': 12,
    'id': 1,
    'color': Color(0XFF3D82AE),
  },

  {
    'imagePath': 'assets/images/bordeau.jpg',
    'title': 'Office Code',
    'description': 'dummyText',
    'price': 234,
    'size': 12,
    'id': 2,
    'color': Color(0XFF3D82AE),
  },

  {
    'imagePath': 'assets/images/jaune.jpg',
    'title': 'Office Code',
    'description': 'dummyText',
    'price': 234,
    'size': 12,
    'id': 1,
    'color': Color(0XFF3D82AE),
  },

  {
    'imagePath': 'assets/images/jaune2.jpg',
    'title': 'Office Code',
    'description': 'dummyText',
    'price': 234,
    'size': 12,
    'id': 1,
    'color': Color(0XFF3D82AE),
  },

  {
    'imagePath': 'assets/images/rouge.jpg',
    'title': 'Office Code',
    'description': 'dummyText',
    'price': 234,
    'size': 12,
    'id': 1,
    'color': Color(0XFF3D82AE),
  },
];
