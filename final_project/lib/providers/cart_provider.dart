import 'package:flutter/foundation.dart';
import '../models/meal.dart';

class CartItem {
  final Meal meal;
  int quantity;

  CartItem({
    required this.meal,
    this.quantity = 1,
  });

  double get totalPrice => meal.price * quantity;
}

class CartProvider with ChangeNotifier {
  final Map<String, CartItem> _items = {};

  Map<String, CartItem> get items => {..._items};

  int get itemCount => _items.length;

  double get totalAmount {
    var total = 0.0;
    _items.forEach((key, cartItem) {
      total += cartItem.totalPrice;
    });
    return total;
  }

  void addItem(Meal meal) {
    if (_items.containsKey(meal.title)) {
      _items.update(
        meal.title,
        (existingCartItem) => CartItem(
          meal: existingCartItem.meal,
          quantity: existingCartItem.quantity + 1,
        ),
      );
    } else {
      _items.putIfAbsent(
        meal.title,
        () => CartItem(meal: meal),
      );
    }
    notifyListeners();
  }

  void removeItem(String mealTitle) {
    _items.remove(mealTitle);
    notifyListeners();
  }

  void updateQuantity(String mealTitle, int quantity) {
    if (!_items.containsKey(mealTitle)) return;
    if (quantity <= 0) {
      removeItem(mealTitle);
    } else {
      _items.update(
        mealTitle,
        (existingCartItem) => CartItem(
          meal: existingCartItem.meal,
          quantity: quantity,
        ),
      );
      notifyListeners();
    }
  }

  void clear() {
    _items.clear();
    notifyListeners();
  }
} 