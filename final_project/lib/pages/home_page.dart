import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/meal_card.dart';
import '../providers/meal_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MealProvider>(
      builder: (context, mealProvider, child) {
        final meals = mealProvider.meals;
        
        return GridView.builder(
          padding: const EdgeInsets.all(16),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.7,
            crossAxisSpacing: 16,
            mainAxisSpacing: 16,
          ),
          itemCount: meals.length,
          itemBuilder: (context, index) => MealCard(meal: meals[index]),
        );
      },
    );
  }
} 