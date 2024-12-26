import 'package:flutter/material.dart';


class InterestsCard extends StatelessWidget {

  final String title;
  final String desc;

  const InterestsCard({super.key,  required this.title , required this.desc});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: 10, top: 15),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
        
            const SizedBox(height: 10,),
        
            Text(desc,
              style: const TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10,),

          ]
        ),

      ),
      
    );
  }
}