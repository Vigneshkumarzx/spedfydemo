import 'package:flutter/material.dart';

class LibraryList extends StatelessWidget {
  const LibraryList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 20,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Container(
            width: 48,
            height: 48,
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          title: Text('Playlist ${index + 1}'),
          subtitle: const Text('Playlist • User'),
        );
      },
    );
  }
}
