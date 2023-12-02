import 'dart:core';

import 'package:flutter/material.dart';

import 'kofimodel.dart';

class CoffeeShop extends ChangeNotifier{


  //sale list
  final List<Coffee> _shop=[
    Coffee(name: 'Black Coffee', price: '₹ 10', img: 'Assets/img/coffee.png'),
    Coffee(name: 'Milk Coffee', price: '₹ 15', img: 'Assets/img/coffee1.png'),
    Coffee(name: 'Cappuccino', price: '₹ 50', img: 'Assets/img/latte-art.png'),
    Coffee(name: 'Coffee Shake', price: '₹ 60', img: 'Assets/img/coffee-cup.png')
  ];

  //usr cart
    List<Coffee> _usrcart=[];

  //coffee list
   List<Coffee> get coffeeShop=> _shop;

  //get usr cart
  List<Coffee> get usrCart=> _usrcart;

  //add to cart
  void addItem(Coffee coffee){
    _usrcart.add(coffee);
    notifyListeners();
  }
  //remove from cart
  void remItem(Coffee coffee){
    _usrcart.remove(coffee);
    notifyListeners();
  }
}

