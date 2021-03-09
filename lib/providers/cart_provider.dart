import 'package:flutter/cupertino.dart';
import 'package:flutter_bookshop/models/cart.dart';

class Cart with ChangeNotifier {
  Map<int, CartItem> _items = {};

  Map<int, CartItem> get items {
    return {..._items};
  }

  int get itemCount {
    return _items.length;
  }

  void addItem(int bookId, String title, int price) {
    if (_items.containsKey(bookId)) {
      _items.update(
          bookId,
          (inCartItem) => CartItem(
                inCartItem.bookId,
                inCartItem.title,
                inCartItem.qty + 1,
                inCartItem.price,
              ));
    } else {
      _items.putIfAbsent(bookId, () => CartItem(bookId, title, 1, price));
    }
    notifyListeners();
  }
}
