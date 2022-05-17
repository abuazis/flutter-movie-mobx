import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final String title;
  final String director;
  final List<String> genres;
  final void Function()? onTap;

  const MovieCard({ 
    Key? key,
    required this.title,
    required this.director,
    required this.genres,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        decoration: BoxDecoration(
          color: ThemeData.dark().backgroundColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: ThemeData.dark().cardColor
          ),
          boxShadow: [
            BoxShadow(
              color: ThemeData.dark().cardColor,
              offset: const Offset(0, 0),
              blurRadius: 12,
              spreadRadius: 0,
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              director,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  genres.join(", "),
                  style: const TextStyle(fontSize: 14),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}