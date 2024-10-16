import 'package:flutter/material.dart';

class Checkboxwidget extends StatefulWidget {
  const Checkboxwidget({super.key});

  @override
  State<Checkboxwidget> createState() => _CheckboxwidgetState();
}

class _CheckboxwidgetState extends State<Checkboxwidget> {
  bool py = false;
  bool cpp = false;
  bool java = false;

  @override
  Widget build(BuildContext context) {
    //checkbox function
    Widget checktext(String text, bool value, ValueChanged onchanged) {
      return Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onchanged,
            activeColor: Colors.amberAccent,
            checkColor: Colors.black,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black87,
            ),
          )
        ],
      );
    }

    bool value = false;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            "Select your favorite Programming Language",
            style: TextStyle(fontSize: 35, color: Colors.black87),
          ),
        ),
        body: Column(
          children: [
            checktext(
              "python",
              py,
              (value) {
                setState(() {
                  py = value;
                });
              },
            ),
            checktext(
              "C++",
              cpp,
              (value) {
                setState(() {
                  cpp = value;
                });
              },
            ),
            checktext(
              "Java",
              java,
              (value) {
                setState(() {
                  java = value;
                });
              },
            ),
          ],
        ));
  }
}
