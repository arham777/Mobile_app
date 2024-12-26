// Suggested code may be subject to a license. Learn more: ~LicenseLog:875365748.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:865179618.
import 'package:flutter/material.dart';
import 'package:navigation/main.dart';

class WelcomeScreen extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:931978336.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1545734832.
   WelcomeScreen({super.key});
  var nameController = TextEditingController();


  @override
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1319282762.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1148574893.
  Widget build(BuildContext context) {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2338132227.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Welcome',
            style: TextStyle(
              fontSize: 30,
            ),
            ),

            TextField(
              controller: nameController,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
// Suggested code may be subject to a license. Learn more: ~LicenseLog:296901053.
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              
            ),
            onPressed: () {
              String name = nameController.text;
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  MyHomePage(
                  // title: 'Login'
                   name: name
                  ),
                  ),
              );
            },
            child: const Text('Login',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),

        ],
      )),
    );
  }
}
