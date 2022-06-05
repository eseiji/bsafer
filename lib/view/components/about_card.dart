import 'dart:io';

import 'package:flutter/material.dart';

class AboutCard extends StatelessWidget {
  const AboutCard({
    Key? key,
    required this.photo,
    required this.name,
    required this.description,
    required this.social,
  }) : super(key: key);

  final String photo;
  final String name;
  final String description;
  final Map<String, dynamic> social;

  void redirect(String link) {
    print(link);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.all(10),
            height: 300,
            decoration: BoxDecoration(
              color: const Color(0xff172026),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(photo),
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  description,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    leadingDistribution: TextLeadingDistribution.proportional,
                    color: Colors.white.withOpacity(0.7),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () => redirect(social['instagram']),
                      icon: const Icon(
                        Icons.whatsapp,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => redirect(social['github']),
                      icon: const Icon(
                        Icons.circle,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => redirect(social['instagram']),
                      icon: const Icon(
                        Icons.square,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () => redirect(social['facebook']),
                      icon: const Icon(
                        Icons.facebook,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
    // Container(
    //   color: Color(0xFF172026),
    //   height: 100,
    //   width: 100,
    //   child: ,
    // );
  }
}
