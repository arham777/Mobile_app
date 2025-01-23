
import 'package:flutter/material.dart';
import 'package:mid_app/pages/mealdetails_page.dart';

class MealCard extends StatelessWidget {
  final String title;
  final String price;
  final String imageurl;

  const MealCard({super.key, required this.title, required this.price, required this.imageurl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MealDetails(title: title, price: price, imageurl: imageurl),
          ),
        );
      },
      child: Card(
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Image.network(
                  imageurl,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
                ),
                
                const SizedBox(
                  height: 5.0,
                ),
                
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(title),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(price),
              
                  const Icon(Icons.add),
              
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';

// class MealCard extends StatelessWidget {
//   final String title;
//   final String price;
//   final String imageurl;

//   const MealCard({super.key, required this.title, required this.price, required this.imageurl});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 10,
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(16)
//       ),
//       child: Column(
//         children: [
//           Image.network(
//             imageurl,
//             fit: BoxFit.cover,
//             errorBuilder: (context, error, stackTrace) => const Icon(Icons.error),
//           ),
//           Text(title),
//           Text(price),
//         ],
//       ),
//     );
//   }

// }
