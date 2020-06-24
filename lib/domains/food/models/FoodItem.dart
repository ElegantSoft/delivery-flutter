import 'package:flutter/material.dart';

class FoodItem {
  int id;
  String title;
  String hotel;
  double price;
  String imgUrl;
  int quantity;

  FoodItem(
      {@required this.id,
      @required this.title,
      @required this.hotel,
      @required this.price,
      @required this.imgUrl,
      @required this.quantity});

  void incrementQuantity() {
    this.quantity++;
  }
}
