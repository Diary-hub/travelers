// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class locAndSub extends StatelessWidget {
  locAndSub({super.key, required this.icon, required this.text});

  String text;
  Icon icon = const Icon(
    Icons.abc,
    size: 30,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
                color: const Color.fromARGB(255, 173, 173, 173),
                borderRadius: BorderRadius.circular(100)),
            child: icon),
        const SizedBox(
          height: 20,
        ),
        Text(text)
      ],
    );
  }
}
