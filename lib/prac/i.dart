import 'package:flutter/material.dart';

class Dialogbox extends StatelessWidget {
  const Dialogbox({super.key});

  @override
  Widget build(BuildContext context) {
    dialogbox() {
      showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text("ALERT DIALOG"),
            actions: [
              const TextField(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: const Text("save"),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text("Cancel"))
                ],
              )
            ],
          );
        },
      );
    }

    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: dialogbox,
          child: const Text("show dialog box"),
        ),
      ),
    );
  }
}
