import 'package:flutter/material.dart';

class CurrConvMaterialPage extends StatefulWidget {
  const CurrConvMaterialPage({super.key});

  @override
  State<CurrConvMaterialPage> createState() => _CurrConvMaterialPageState();
}

class _CurrConvMaterialPageState extends State<CurrConvMaterialPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(40),
    );

    return Scaffold(
      backgroundColor: const Color.fromRGBO(53, 6, 53, 0.952),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(214, 141, 59, 141),
        elevation: 0,
        title: const Text(
          'Currenverter',
          style: TextStyle(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'NGN $result',
              style: const TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: InputDecoration(
                  hintText: "Kindly enter the amount in USD",
                  hintStyle: const TextStyle(
                    color: Colors.black54,
                  ),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    result = double.parse(textEditingController.text) * 777;
                  });
                },
                // style: ButtonStyle(
                //   backgroundColor: const MaterialStatePropertyAll(
                //     Color.fromRGBO(212, 101, 216, 0.671),
                //   ),
                //   foregroundColor: const MaterialStatePropertyAll(Colors.white),
                //   minimumSize: const MaterialStatePropertyAll(
                //     Size(double.infinity, 50),
                //   ),
                //   shape: MaterialStatePropertyAll(
                //     RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(40),
                //     ),
                //   ),
                // ),

                // Alternatively:
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(212, 101, 216, 0.671),
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                  ),
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
