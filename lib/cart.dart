import 'package:flutter/foundation.dart';

class CartItem {
  final String id;
  final String name;
  final double price;

  CartItem({
    required this.id,
    required this.name,
    required this.price,
  });
}

class Cart with ChangeNotifier {
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  void addItem(String id, String name, double price) {
    if (_items.containsKey(id)) {
      _items.update(
        id,
        (existingCartItem) => CartItem(
          id: existingCartItem.id,
          name: existingCartItem.name,
          price: existingCartItem.price + price,
        ),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          id: DateTime.now().toString(),
          name: name,
          price: price,
        ),
      );
    }
    notifyListeners();
  }
}
