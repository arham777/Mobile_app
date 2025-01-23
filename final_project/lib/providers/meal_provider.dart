import 'package:flutter/foundation.dart';
import '../models/meal.dart';
import '../data/dummy_data.dart';

class MealProvider with ChangeNotifier {
  List<Meal> _meals = [...dummyMeals];
  
  List<Meal> get meals => [..._meals];

  void addMeal({
    required String title,
    required String description,
    required String imageUrl,
    required double price,
  }) {
    final newMeal = Meal(
      title: title,
      description: description,
      imageUrl: imageUrl,
      rating: 0.0, // Initial rating
      price: price,
      reviews: [], // Initial empty reviews
    );

    _meals.add(newMeal);
    notifyListeners();
  }

  void deleteMeal(String title) {
    _meals.removeWhere((meal) => meal.title == title);
    notifyListeners();
  }

  void updateMeal({
    required String oldTitle,
    required String newTitle,
    required String description,
    required String imageUrl,
    required double price,
  }) {
    final index = _meals.indexWhere((meal) => meal.title == oldTitle);
    if (index >= 0) {
      _meals[index] = Meal(
        title: newTitle,
        description: description,
        imageUrl: imageUrl,
        rating: _meals[index].rating,
        price: price,
        reviews: _meals[index].reviews,
      );
      notifyListeners();
    }
  }
} 