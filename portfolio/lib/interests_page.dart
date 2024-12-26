import 'package:flutter/material.dart';
import 'package:portfolio/components/interests_card.dart';
import 'package:portfolio/education_page.dart';

class InterestsPage extends StatelessWidget {
  const InterestsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portfolio Interest Section'),
        centerTitle: true,
      ),
      body: InkWell(
         onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context)=> const EducationPage(), 
        )
        );
         },
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
             Padding(
              padding: EdgeInsets.only(left: 10.0, top: 12),
              child: Text('My Interests:',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            
            InterestsCard(title: 'Mobile App Development', desc: 'Creating responsive and user-friendly mobile applications'),
            InterestsCard(title: 'Web Development', desc: 'Building responsive and scalable web applications.'),
            InterestsCard(title: 'Machine Learning', desc: 'Exploring algorithms and models to extract insights from data.'),
            InterestsCard(title: 'UI/UX Design', desc: 'Designing intuitive and visually appealing user interfaces.'),
            InterestsCard(title: 'Cloud Computing', desc: 'Leveraging cloud platforms for efficient and scalable solutions.'),
            InterestsCard(title: 'Open Source Contribution', desc: 'Contributing to open source projects and communities.'),
            
        ],
        ),
      ),
    );
  }
}