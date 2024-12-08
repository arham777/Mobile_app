import 'package:card_app/details.dart';
import 'package:flutter/material.dart';

class CardApp extends StatelessWidget {
  const CardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DetailApp(),
              
                ),
                
              );
            },
            child: Card(
              color: const Color.fromARGB(255, 111, 185, 255),
              elevation: 20.0,
              margin: const EdgeInsets.all(10.0),
              child: SizedBox( // Restrict the size of the card
                width: 150, // Fixed width
                height: 250, // Fixed height
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/h1.jpg',
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        'Description of the picture',
                        style: TextStyle(
                          fontSize: 12, 
                          fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                      const Text('Price: 299',
                        style: TextStyle(
                          fontSize: 9,
                          ),
                          ),
                      const SizedBox(height: 3),
                      const Text('Ratings: 5 stars',
                      style: TextStyle(
                        fontSize: 9,
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            
          ),
    );
  }
}