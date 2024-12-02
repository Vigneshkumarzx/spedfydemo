import 'package:flutter/material.dart';

class GenreGrid extends StatelessWidget {
  const GenreGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> genres = [
      {'name': 'Pop', 'color': Colors.pink},
      {'name': 'Hip-Hop', 'color': Colors.orange},
      {'name': 'Rock', 'color': Colors.red},
      {'name': 'Electronic', 'color': Colors.purple},
      {'name': 'Jazz', 'color': Colors.blue},
      {'name': 'Classical', 'color': Colors.teal},
    ];

    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.5,
      ),
      itemCount: genres.length,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            color: genres[index]['color'],
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Text(
              genres[index]['name'],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
