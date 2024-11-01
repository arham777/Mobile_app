import 'package:flutter/material.dart';



class CurrencyConverterPage extends StatefulWidget {
  CurrencyConverterPage({super.key}) ;

  @override
  _CurrencyConverterPageState createState() => _CurrencyConverterPageState();
}

class _CurrencyConverterPageState extends State<CurrencyConverterPage> {
  double result=0;
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1695006733.
// Suggested code may be subject to a license. Learn more: ~LicenseLog:436671510.
  TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {

    const border = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(50)),
      borderSide: BorderSide(
        color: Color.fromARGB(255, 122, 115, 115),
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
    );

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 26, 26, 26),
      appBar: AppBar(
        title: Text('Currency Converter App'),
        backgroundColor: Color.fromRGBO(215, 215, 215, 1),
        titleTextStyle: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 24, 24, 24),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              'Currency $result',
              // 'Currency Converter',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 236, 236, 236),
              ),
            ),
             Padding(
              padding: EdgeInsets.all(12.0),
              child: TextField(
                controller: textEditingController,
                decoration: InputDecoration(
                  hintText: "Enter value to convert",
                  hintStyle: TextStyle(color: Color.fromARGB(255, 24, 24, 24)),
                  prefixIcon: Icon(Icons.attach_money_sharp,
                  color: Color.fromARGB(255, 0, 0, 0)  ,
                  size: 30,),
                  filled: true,
                  fillColor: Color.fromARGB(255, 255, 255, 255),
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  result = double.parse(textEditingController.text) * 278;
                });
                // debugPrint('Pressed');
              },
              style: const ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 236, 236, 236),
                ),
                foregroundColor: WidgetStatePropertyAll(
                  Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              child: const Text(
                'Convert',
                style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}