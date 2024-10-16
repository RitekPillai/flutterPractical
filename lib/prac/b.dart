import 'package:flutter/material.dart';

class ContainerWidget extends StatefulWidget {
  const ContainerWidget({super.key});

  @override
  State<ContainerWidget> createState() => _ContainerWidgetState();
}

class _ContainerWidgetState extends State<ContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.blue.shade900,
                spreadRadius: 7.1,
                blurRadius: 5,
              ),
            ],
            color: Colors.blueAccent,
            shape: BoxShape.rectangle,
            borderRadius: const BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: const Center(
              child: Text(
            "Hellooo!",
            style: TextStyle(fontSize: 24),
          )),
        ),
      ),
    );
  }
}
