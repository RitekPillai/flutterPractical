import 'package:flutter/material.dart';

class radiowidget extends StatefulWidget {
  const radiowidget({super.key});

  @override
  State<radiowidget> createState() => _radiowidgetState();
}

class _radiowidgetState extends State<radiowidget> {
  int selectedvalue = 0;
  @override
  Widget build(BuildContext context) {
    //radio function
    radiobuttion(String text, ValueChanged onchanged, value) {
      return RadioListTile(
          title: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
          value: value, //if selected value matches means buttion is selected
          activeColor: Colors.green,
          groupValue: selectedvalue,
          hoverColor: Colors.blueGrey[200],
          onChanged: onchanged);
    }

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const Text(
              "Enter Your Course",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            radiobuttion("Bsc-it", (value) {
              setState(() {
                debugPrint("you have selected:Bsc-it");
                selectedvalue = value;
              });
            }, 1),
            radiobuttion("BCom", (value) {
              setState(() {
                debugPrint("you have selected:Bcom");
                selectedvalue = value;
              });
            }, 2),
            radiobuttion("BBI", (value) {
              debugPrint("you have selected:BBI");
              setState(() {
                selectedvalue = value;
              });
            }, 3),
          ],
        ),
      ),
    );
  }
}
