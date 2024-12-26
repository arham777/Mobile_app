import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/interests_page.dart';


class MyPortfolio extends StatelessWidget {
  const MyPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Portfolio'),
        centerTitle: true,
        
      ),
      body: InkWell(
        onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const InterestsPage(),
          ),
        );
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 10),
                
                const Text(
                  'Muhammad Arham Athar',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                    ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'I am Mobile App Developer and Designer',
                  style: TextStyle(
                    fontSize: 24,
                    ),
                ),
            
               const SizedBox(height: 10),
            
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.facebook),
                    Icon(FontAwesomeIcons.instagram),
                    Icon(FontAwesomeIcons.linkedin),
                    Icon(FontAwesomeIcons.twitter),
                  ],
                ),
            
                const SizedBox(height: 20),
            
                Image.asset('assets/images/profile.jpg'),
                const SizedBox(height: 20),
            
            
                const Text(
                  'Muhammad Arham Athar',
                  style: TextStyle(
                    fontSize: 20, 
                    fontWeight: FontWeight.bold
                    ),
                ),
            
                const SizedBox(height: 20),
            
                const Text(
                  'Passionate developer adept at crafting elegant and efficient solutions to complex problems. Dedicated to continuous learning and staying abreast of emerging',
                  style: TextStyle(
                    fontSize: 16,
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