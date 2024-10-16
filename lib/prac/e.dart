import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  bool isopen = false;
  final TextEditingController _textEditingController = TextEditingController();
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.all(20),
            child: Form(
              key: _formkey,
              child: TextFormField(
                controller: _textEditingController,
                obscureText: isopen ? false : true,
                decoration: InputDecoration(
                  helperStyle: const TextStyle(color: Colors.grey),
                  helperText: "Password should be greater than 5 Charecters",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isopen = !isopen;
                      });
                    },
                    icon: Icon(
                      isopen ? Icons.visibility : Icons.visibility_off,
                    ),
                  ),
                  border: const OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  hintText: "Enter password",
                ),
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                debugPrint(_textEditingController.text);
              },
              child: const Text("Save"))
        ],
      ),
    );
  }
}
