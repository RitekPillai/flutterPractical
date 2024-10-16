import 'package:flutter/material.dart';

class dateandtime extends StatefulWidget {
  const dateandtime({super.key});

  @override
  State<dateandtime> createState() => _dateandtimeState();
}

class _dateandtimeState extends State<dateandtime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
              onPressed: () async {
                showTimePicker(
                  initialEntryMode: TimePickerEntryMode.dial,
                  context: context,
                  initialTime: TimeOfDay.now(),
                );
              },
              child: const Text("select time")),
          const SizedBox(
            width: 20,
          ),
          ElevatedButton(
              onPressed: () async {
                showDatePicker(
                    context: context,
                    firstDate: DateTime(1999),
                    lastDate: DateTime(2025));
              },
              child: const Text("select date"))
        ],
      )),
    );
  }
}
