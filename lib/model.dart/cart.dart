import 'package:flutter/material.dart';
import 'package:grocery_app/model.dart/model.dart';

class Cart extends ChangeNotifier {
  //list of items for sale

  List<Items> groceryshop = [
    Items(images: "assets/images/oange.jpg", itemname: "Orange", price: "₹55"),
    Items(images: "assets/images/grape.jpg", itemname: "Grape", price: "₹80"),
    Items(images: "assets/images/apple.jpg", itemname: "Apple", price: "₹160"),
    Items(images: "assets/images/tomato.jpg", itemname: "Tomato", price: "₹30"),
    Items(
        images: "assets/images/cabbage.jpg", itemname: "Cabbage", price: "₹40"),
    Items(
        images: "assets/images/pumpkin.jpg", itemname: "Pumpkin", price: "₹25"),
    Items(images: "assets/images/muffin.jpg", itemname: "Muffin", price: "₹45"),
    Items(images: "assets/images/bun.jpg", itemname: "Plain Bun", price: "₹30"),
    Items(
        images: "assets/images/bread.jpg",
        itemname: "Wheat Bread",
        price: "₹48"),
  ];

  //list of item in user cart
  List<Items> usercart = [];

  //get list of items for sale
  List<Items> getItemList() {
    return groceryshop;
  }

  //get cart
  List<Items> show() {
    return usercart;
  }

  //add items to cart
  void addItem(Items items) {
    usercart.add(items);
    notifyListeners();
  }

  //remove item from cart
  void removeItem(Items items) {
    usercart.remove(items);
    notifyListeners();
    
  }
  

  
}
