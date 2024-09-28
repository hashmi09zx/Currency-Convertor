import 'package:flutter/material.dart';

class CurrencyConvertorMaterialPage extends StatefulWidget {
  const CurrencyConvertorMaterialPage({super.key});

  @override
  State<CurrencyConvertorMaterialPage> createState() =>
      _CurrencyConvertorMaterialPageState();
}

class _CurrencyConvertorMaterialPageState
    extends State<CurrencyConvertorMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
        borderSide: const BorderSide(
          color: Color.fromARGB(255, 10, 10, 10),
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.circular(10));

    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text('Currency Convertor'),
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(8.0),
              // margin: const EdgeInsets.all(10),
              //color: Colors.black,
              child: Text(
                'INR ${result.toStringAsFixed(2)}',
                style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Color.fromARGB(255, 15, 15, 15),
                ),
                decoration: InputDecoration(
                  hintText: "Please enter amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  suffixIcon: const Icon(Icons.monetization_on),
                  suffixIconColor: const Color.fromARGB(255, 29, 8, 219),
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.number,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ElevatedButton(
                onPressed: () {
                  // print(textEditingController.text);
                  // print(double.parse(textEditingController.text) * 83.06);
                  result = double.parse(textEditingController.text) * 83.06;
                  setState(() {});
                },
                style: TextButton.styleFrom(
                  elevation: (15),
                  backgroundColor: (Colors.black),
                  foregroundColor: (const Color.fromARGB(255, 241, 241, 241)),
                  minimumSize: const Size(double.infinity, 50),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
