import 'dart:io';

import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

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
            padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
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
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/images/whatsapp.svg',
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                    const SizedBox(width: 25),
                    SvgPicture.asset(
                      'assets/images/github-2.svg',
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                    const SizedBox(width: 25),
                    SvgPicture.asset(
                      'assets/images/instagram.svg',
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true,
                    ),
                    const SizedBox(width: 25),
                    SvgPicture.asset(
                      'assets/images/facebook.svg',
                      height: 20.0,
                      width: 20.0,
                      allowDrawingOutsideViewBox: true,
                    ),

                    // IconButton(
                    //   onPressed: () => redirect(social['whatsapp']),
                    //   icon: const Icon(
                    //     Icons.whatsapp,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // IconButton(
                    //   onPressed: () => redirect(social['github']),
                    //   icon: const Icon(
                    //     Icons.circle,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // IconButton(
                    //   onPressed: () => redirect(social['instagram']),
                    //   icon: const Icon(
                    //     Icons.square,
                    //     color: Colors.white,
                    //   ),
                    // ),
                    // IconButton(
                    //   onPressed: () => redirect(social['facebook']),
                    //   icon: const Icon(
                    //     Icons.facebook,
                    //     color: Colors.white,
                    //   ),
                    // ),
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
