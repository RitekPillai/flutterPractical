import 'dart:async';

import 'package:flutter/material.dart';

class Streamwidget extends StatefulWidget {
  const Streamwidget({super.key});

  @override
  State<Streamwidget> createState() => _StreamwidgetState();
}

class _StreamwidgetState extends State<Streamwidget> {
  bool isclose = true;
  StreamController<String> streamController = StreamController<String>();
  @override
  Widget build(BuildContext context) {
    //implemted
    final formkey = GlobalKey<FormState>();
    StreamController<bool> streamcontroller = StreamController<bool>();
    TextEditingController textEditingController = TextEditingController();

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Form(
              key: formkey,
              child: StreamBuilder<bool>(
                  stream: streamcontroller.stream,
                  builder: (context, snapshot) {
                    return TextFormField(
                      controller: textEditingController,
                      obscureText: isclose ? false : true,
                      decoration: InputDecoration(
                        helperStyle: const TextStyle(color: Colors.grey),
                        helperText:
                            "Password should be greater than 5 Charecters",
                        suffixIcon: IconButton(
                          onPressed: () {
                            isclose = !isclose;
                            streamcontroller.add(isclose);
                          },
                          icon: Icon(
                            isclose ? Icons.visibility : Icons.visibility_off,
                          ),
                        ),
                        border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20))),
                        hintText: "Enter password",
                      ),
                    );
                  }),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint(textEditingController.text);
              },
              child: const Text("Save"))
        ],
      ),
    );
  }
}
