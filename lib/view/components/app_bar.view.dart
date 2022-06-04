import 'package:flutter/material.dart';

AppBar homeAppBar(String title) {
  return AppBar(
    backgroundColor: const Color(0xff121517),
    automaticallyImplyLeading: true,
    elevation: 3,
    title: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        const Text(
          'Flutterando MasterClass',
          style: TextStyle(
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
    actions: [
      IconButton(
        onPressed: () => {},
        icon: const Icon(Icons.nightlight_round),
      )
    ],
  );
}
