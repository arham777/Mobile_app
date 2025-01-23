import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/meal_provider.dart';
import '../../providers/user_provider.dart';
import 'add_meal_page.dart';

class ManageMealsPage extends StatelessWidget {
  const ManageMealsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final userProvider = Provider.of<UserProvider>(context);
    
    // Secure check for admin access
    if (!userProvider.isAdmin) {
      // Automatically navigate back if not admin
      WidgetsBinding.instance.addPostFrameCallback((_) {
        Navigator.of(context).pop();
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Access denied. Admin privileges required.'),
            backgroundColor: Colors.red,
          ),
        );
      });

      return const Scaffold(
        body: Center(
          child: Text('Access Denied'),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Manage Meals'),
      ),
      body: Consumer<MealProvider>(
        builder: (context, mealProvider, child) {
          final meals = mealProvider.meals;
          return ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: meals.length,
            itemBuilder: (context, index) {
              final meal = meals[index];
              return Card(
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Image.network(
                      meal.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                  ),
                  title: Text(meal.title),
                  subtitle: Text(
                    '\$${meal.price.toStringAsFixed(2)}',
                    style: const TextStyle(color: Colors.green),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.edit),
                        onPressed: () {
                          // Navigate to edit meal page
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => AddMealPage(meal: meal),
                            ),
                          );
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // Show confirmation dialog
                          showDialog(
                            context: context,
                            builder: (ctx) => AlertDialog(
                              title: const Text('Delete Meal'),
                              content: const Text(
                                'Are you sure you want to delete this meal?',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(ctx),
                                  child: const Text('Cancel'),
                                ),
                                TextButton(
                                  onPressed: () {
                                    mealProvider.deleteMeal(meal.title);
                                    Navigator.pop(ctx);
                                  },
                                  child: const Text(
                                    'Delete',
                                    style: TextStyle(color: Colors.red),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddMealPage(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
} 