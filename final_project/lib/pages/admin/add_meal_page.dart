import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/meal_provider.dart';
import '../../models/meal.dart';
import '../../providers/user_provider.dart';

class AddMealPage extends StatefulWidget {
  final Meal? meal; // If provided, we're editing an existing meal

  const AddMealPage({super.key, this.meal});

  @override
  State<AddMealPage> createState() => _AddMealPageState();
}

class _AddMealPageState extends State<AddMealPage> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _titleController;
  late final TextEditingController _descriptionController;
  late final TextEditingController _imageUrlController;
  late final TextEditingController _priceController;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.meal?.title);
    _descriptionController = TextEditingController(text: widget.meal?.description);
    _imageUrlController = TextEditingController(text: widget.meal?.imageUrl);
    _priceController = TextEditingController(
      text: widget.meal?.price.toStringAsFixed(2),
    );
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    _imageUrlController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      try {
        final mealProvider = Provider.of<MealProvider>(context, listen: false);
        
        if (widget.meal != null) {
          // Update existing meal
          mealProvider.updateMeal(
            oldTitle: widget.meal!.title,
            newTitle: _titleController.text.trim(),
            description: _descriptionController.text.trim(),
            imageUrl: _imageUrlController.text.trim(),
            price: double.parse(_priceController.text),
          );
        } else {
          // Add new meal
          mealProvider.addMeal(
            title: _titleController.text.trim(),
            description: _descriptionController.text.trim(),
            imageUrl: _imageUrlController.text.trim(),
            price: double.parse(_priceController.text),
          );
        }

        Navigator.pop(context);
        
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              widget.meal == null ? 'Meal added successfully' : 'Meal updated successfully'
            ),
            backgroundColor: Colors.green,
          ),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(e.toString()),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    if (!Provider.of<UserProvider>(context).isAdmin) {
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
        title: Text(widget.meal == null ? 'Add Meal' : 'Edit Meal'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _titleController,
                decoration: const InputDecoration(
                  labelText: 'Title',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: 'Description',
                  border: OutlineInputBorder(),
                ),
                maxLines: 3,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a description';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _imageUrlController,
                decoration: const InputDecoration(
                  labelText: 'Image URL',
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter an image URL';
                  }
                  if (!Uri.tryParse(value)!.isAbsolute) {
                    return 'Please enter a valid URL';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              TextFormField(
                controller: _priceController,
                decoration: const InputDecoration(
                  labelText: 'Price',
                  border: OutlineInputBorder(),
                  prefixText: '\$',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a price';
                  }
                  if (double.tryParse(value) == null) {
                    return 'Please enter a valid number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: _submitForm,
                child: Text(
                  widget.meal == null ? 'Add Meal' : 'Update Meal',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 