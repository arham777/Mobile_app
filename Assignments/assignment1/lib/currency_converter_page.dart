import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/text-comp.dart';

class CurrencyConverterPage extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:3148041504.
  const CurrencyConverterPage({super.key});
  @override
  Widget build(BuildContext context) {
    // const border = OutlineInputBorder(
    //   borderRadius: BorderRadius.all(Radius.circular(50)),
    //   borderSide: BorderSide(
    //     color: Color.fromARGB(255, 122, 115, 115),
    //     width: 2.0,
    //     style: BorderStyle.solid,
    //     strokeAlign: BorderSide.strokeAlignOutside,
    //   ),
    // );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 26, 26),
       body: // Center(
        const TextComp(),
        // child: Column(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     const Text(
        //       'Currency Converter',
        //       style: TextStyle(
        //         fontSize: 24,
        //         fontWeight: FontWeight.bold,
        //         color: Color.fromARGB(255, 236, 236, 236),
        //       ),
        //     ),
        //     const Padding(
        //       padding: EdgeInsets.all(12.0),
        //       child: TextField(
        //         decoration: InputDecoration(
        //           hintText: "Please Enter your name",
        //           hintStyle: TextStyle(color: Color.fromARGB(255, 24, 24, 24)),
        //           prefixIcon: Icon(Icons.monetization_on),
        //           filled: true,
        //           fillColor: Color.fromARGB(255, 190, 190, 190),
        //           focusedBorder: border,
        //           enabledBorder: border,
        //         ),
        //         keyboardType: TextInputType.numberWithOptions(decimal: true),
        //       ),
        //     ),
        //     TextButton(
        //       onPressed: () {
        //         debugPrint('Pressed');
        //       },
        //       style: const ButtonStyle(
        //         backgroundColor: WidgetStatePropertyAll(
        //           Color.fromARGB(255, 236, 236, 236),
        //         ),
        //         foregroundColor: WidgetStatePropertyAll(
        //           Color.fromARGB(255, 0, 0, 0),
        //         ),
        //       ),
        //       child: const Text(
        //         'Convert',
        //         style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
        //       ),
        //     ),
        //   ],
        // ),
      // ),
    );
  }
}
