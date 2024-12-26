import 'package:flutter/material.dart';
import 'package:portfolio/components/interests_card.dart';
import 'package:portfolio/skills_page.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Projects'),
      ),
      body: InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const SkillsPage(),
           ),
           );
        },
        child: ListView(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
               Padding(
                padding: EdgeInsets.only(left: 10.0, top: 12),
                child: Text('Projects and Experience:',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              
              InterestsCard(title: 'ToDo App', desc: 'A simple todo list app built with Flutter and Firebase'),
              InterestsCard(title: 'Weather App', desc: 'A simple weather app built with Flutter that fethces data from a REST API.'),
              InterestsCard(title: 'Expense Tracker App', desc: 'The app enables users to track their expenses and income.'),
              
              
          ],
          ),
      ),
    );
  }
}