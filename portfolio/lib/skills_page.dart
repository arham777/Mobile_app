import 'package:flutter/material.dart';
import 'package:portfolio/components/skill_bar.dart';
import 'package:portfolio/my_portfolio.dart';

class SkillsPage extends StatelessWidget {
  const SkillsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Skills'),
      ),
      body: InkWell(
          onTap: (){
            Navigator.push(
              context, 
              MaterialPageRoute(
                builder: (context)=> const MyPortfolio()
            ),
            );

          },
        child: const Padding(
          padding:  EdgeInsets.only(left: 10.0, top: 10.0),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text('Skills',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SkillBar(skillName: 'Flutter', percentage: 90),
              SkillBar(skillName: 'Dart', percentage: 85),
              SkillBar(skillName: 'UI/UX Design', percentage: 80),
            ],
          ),
        ),
      ),
    );
  }
}