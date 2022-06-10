import 'package:flutter/material.dart';

import '../../common/data/model/cart_item.dart';

class Cart with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return Map.unmodifiable(_items);
  }

  int get itemCount {
    return _items.length;
  }

  double get totalAmount {
    return _items.values
        .fold(0.0, (total, item) => total + (item.price * item.quantity));
  }

  void add(String productId, String title, double price) {
    if (_items.containsKey(productId)) {
      _items.update(
        productId,
        (current) => CartItem(
          id: current.id,
          title: title,
          quantity: current.quantity + 1,
          price: price,
        ),
      );
    } else {
      _items.putIfAbsent(
        productId,
        () => CartItem(
          id: DateTime.now().toString(),
          title: title,
          quantity: 1,
          price: price,
        ),
      );
    }
    notifyListeners();
  }

  void remove(String productId) {
    _items.remove(productId);
    notifyListeners();
  }

  void removeSingle(String productId) {
    if (!_items.containsKey(productId)) return;

    if (_items[productId]!.quantity > 1) {
      _items.update(
        productId,
        (current) => CartItem(
          id: current.id,
          title: current.title,
          quantity: current.quantity - 1,
          price: current.price,
        ),
      );
    } else {
      _items.remove(productId);
    }
    notifyListeners();
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
}
