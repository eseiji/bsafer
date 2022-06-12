import 'package:flutter/material.dart';

class RepositoriesCard extends StatelessWidget {
  const RepositoriesCard({
    Key? key,
    required this.repository,
  }) : super(key: key);

  final Map<String, dynamic> repository;

  @override
  Widget build(BuildContext context) {
    final String date = repository["updated_at"];
    final result = date.substring(0, 10);
    final year = result.substring(0, 4);
    final month = result.substring(5, 7);
    final day = result.substring(8);
    final dateFmt = '$day/$month/$year';

    return Row(
      children: [
        Expanded(
          child: Container(
            height: 80,
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: const Color(0xff172026),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.source,
                            color: Colors.white.withOpacity(0.7)),
                        const SizedBox(width: 10),
                        Text(
                          repository["name"],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                        ),
                      ],
                    ),
                    RichText(
                      textAlign: TextAlign.end,
                      text: TextSpan(
                        text: 'Atualizado em:\n',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                          fontSize: 13,
                        ),
                        children: [
                          TextSpan(
                            text: dateFmt,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.code, color: Colors.white.withOpacity(0.7)),
                    const SizedBox(width: 10),
                    Text(
                      repository["language"] ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
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
  }
}
