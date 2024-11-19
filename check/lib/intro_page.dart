import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Card with Image, Text & Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          margin: const EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                children:[
                     Image.asset(
                        'assets/images/abc.jpg',   // Make sure the path is correct
                      width: 50,
                      height: 50,
                    ),
                    const SizedBox(width: 16.0),
                    const Text(
                      "Card 1",  // Title of the card
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8.0),
                const Text(
                  "This is a descriptive text for the card. It provides more information about this particular card.",
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(height: 8.0),
                ElevatedButton(
                  onPressed: () {
                    print("Button pressed for Card 1");
                  },
                  child: const Text("Click Me"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
