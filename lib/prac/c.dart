import 'package:flutter/material.dart';

class ContainerWidget2 extends StatefulWidget {
  const ContainerWidget2({super.key});

  @override
  State<ContainerWidget2> createState() => _ContainerWidget2State();
}

class _ContainerWidget2State extends State<ContainerWidget2> {
  bool isclicked = false;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: ElevatedButton(
            style: ButtonStyle(
              shape: const WidgetStatePropertyAll(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              textStyle: const WidgetStatePropertyAll(TextStyle(
                fontSize: 18,
                color: Colors.white,
              )),
              overlayColor: const WidgetStatePropertyAll(Colors.blueAccent),
              backgroundColor: WidgetStatePropertyAll(
                  isclicked ? Colors.redAccent : Colors.amberAccent),
              elevation: const WidgetStatePropertyAll(50),
              foregroundColor: const WidgetStatePropertyAll(Colors.black),
              fixedSize: const WidgetStatePropertyAll(
                Size(150, 100),
              ),
            ),
            onPressed: () {
              setState(() {
                isclicked = !isclicked;
              });
            },
            child: const Text("Click here")));
  }
}
