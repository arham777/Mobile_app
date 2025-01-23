import 'package:flutter/material.dart';
import 'package:portfolio/projects_page.dart';

class EducationPage extends StatelessWidget {
  const EducationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Education'),
      ),
      body:  InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> const ProjectsPage()
           ),
           );
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:  [
              
             const Divider( thickness: 4, color: Colors.black,),

             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Profession'),
                 Text('Software Developer'),
               ],
             ),

              const Divider( thickness: 4, color: Colors.black,),

             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Date of Brith'),
                 Text('14-07-2003'),
               ],
             ),

              const Divider( thickness: 4, color: Colors.black,),

             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('Education'),
                 Text('Higher Education'),
               ],
             ),

              const Divider( thickness: 4, color: Colors.black,),

              Center(
                child: TextButton(onPressed: (){},
                style: ButtonStyle(
                  foregroundColor: const WidgetStatePropertyAll(Colors.grey),
                  textStyle: const WidgetStatePropertyAll(
                     TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              

                side: WidgetStateProperty.all(
                  const BorderSide(color: Colors.black, width: 2),
                ),


                shape: WidgetStateProperty.all(
                  const RoundedRectangleBorder(
                    borderRadius: BorderRadius.zero,
                  ),
                ),

                padding: WidgetStateProperty.all(
                  const EdgeInsets.symmetric(horizontal: 50, vertical: 16)
                ),
                  
                ),
                child: const Text('Check Resume',
                ),
                
                ),
              ),




              const Text('Education',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                  
                ),
              ),

          
             const Divider( thickness: 2, color: Colors.black,),

            const SizedBox(height: 20,),

          
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Text('Graduation',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text("The University of Lahore",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               ],
             ),

             const SizedBox(height: 10,),



             const Padding(
               padding: EdgeInsets.only(right: 16.0),
               child: Text('Bachelor of Science in Information Engineering Technology, BSIET(Continue). '),
             ),
        
            const Divider(),

            const SizedBox(height: 20,),

        
             
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                Text('Intermediate',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                Text("Government College Township",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               ],
             ),

             const SizedBox(height: 10,),


             const Padding(
               padding: EdgeInsets.only(right: 16.0),
               child: Text('FSc. Pre-Engineering. (2020-2022)'),
             ),
        
            const Divider(),
          
            ],
          ),
        ),
      ),
    );
  }
}