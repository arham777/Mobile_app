// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class MealDetails extends StatefulWidget {
  final String title;
  final String price;
  final String imageurl;

  const MealDetails({super.key, required this.title, required this.price, required this.imageurl});

  @override
  _MealDetailsState createState() => _MealDetailsState();
}

class _MealDetailsState extends State<MealDetails> {
  int _cartCount = 0;

  void _addToCart() {
    setState(() {
      _cartCount++;
    });
  }

  void _removeFromCart() {
    setState(() {
      if (_cartCount > 0) {
        _cartCount--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Image.network(
            widget.imageurl,
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              widget.title,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Price: ${widget.price}',
              style: const TextStyle(fontSize: 20),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _removeFromCart,
              ),
              Text(
                '$_cartCount',
                style: const TextStyle(fontSize: 20),
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _addToCart,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: _addToCart,
            child: const Text('Add to Basket'),
          ),
        ],
      ),
    );
  }
}
