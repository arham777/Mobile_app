
import 'package:flutter/material.dart';
import 'package:mid_app/components/meal_cards.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> mealData = [
      {'title': 'Valid Title 1', 'price': '200.20', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
      {'title': 'Valid Title 2', 'price': '150.00', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
      {'title': 'Valid Title 3', 'price': '300.50', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onDoubleTap: (){
            Navigator.pushNamed(context, '/about');
          },
          child: const Text('Homepage')),
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/basket');
              },
              child: const Icon(Icons.shopping_basket)
              
              ),
          ),
        ],
      ),
      body: SizedBox(
        height: 220,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: mealData.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 150,
                child: MealCard(
                  title: mealData[index]['title']!,
                  price: mealData[index]['price']!,
                  imageurl: mealData[index]['imageurl']!,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}




// import 'package:flutter/material.dart';
// import 'package:mid_app/components/meal_cards.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final List<Map<String, String>> mealData = [
//       {'title': 'Valid Title 1', 'price': '200.20', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
//       {'title': 'Valid Title 2', 'price': '150.00', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
//       {'title': 'Valid Title 3', 'price': '300.50', 'imageurl': 'https://th.bing.com/th/id/OIP.c6Tbz7IbCn9bVXzXQSOqhgHaFN?rs=1&pid=ImgDetMain'},
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Homepage'),
//       ),
//       body: SizedBox(
//         height: 180,
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: mealData.length,
//           itemBuilder: (BuildContext context, int index) {
//             return Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                 width: 100,
//                 child: MealCard(
//                   title: mealData[index]['title']!,
//                   price: mealData[index]['price']!,
//                   imageurl: mealData[index]['imageurl']!,
//                 ),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
