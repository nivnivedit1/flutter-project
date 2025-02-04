import 'package:flutter/material.dart';

class CartProvider extends ChangeNotifier {  // this cartprovider is like store house at the top
final List<Map<String, dynamic>> cart =[];

void addProduct (Map<String,dynamic> product) {
  cart.add(product);
  notifyListeners();
}

void removeProduct(Map<String,dynamic> product) {
  cart.remove(product);
  notifyListeners();
}
}
