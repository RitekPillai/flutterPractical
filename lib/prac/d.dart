import 'package:flutter/material.dart';

class EmailText extends StatefulWidget {
  const EmailText({super.key});

  @override
  State<EmailText> createState() => _EmailTextState();
}

class _EmailTextState extends State<EmailText> {
  @override
  Widget build(BuildContext context) {
    TextEditingController textEditingController = TextEditingController();
    final formkey = GlobalKey<FormState>();
    return Scaffold(
      body: Center(
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                child: TextField(
                  controller: textEditingController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      prefixIcon: Icon(
                        Icons.alternate_email_rounded,
                        size: 30,
                        color: Colors.black,
                      ),
                      hintText: "Enter your Email address",
                      helperStyle: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                      helperText: "abc@gmail.com"),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    debugPrint(textEditingController.text);
                  },
                  child: const Text("save"))
            ],
          ),
        ),
      ),
    );
  }
}
