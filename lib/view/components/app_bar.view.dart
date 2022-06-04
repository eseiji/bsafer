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
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 3),
        Text(
          'Flutterando MasterClass',
          style: TextStyle(
            color: Colors.white.withOpacity(0.7),
            fontSize: 12,
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
