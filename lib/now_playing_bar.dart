import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:spodifyclone/audio_providers.dart';

class NowPlayingBar extends StatelessWidget {
  const NowPlayingBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AudioProvider>(
      builder: (context, audioProvider, child) {
        if (audioProvider.currentSong.isEmpty) return const SizedBox.shrink();

        return Container(
          height: 64,
          color: const Color(0xFF282828),
          child: Row(
            children: [
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      audioProvider.currentSong,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      audioProvider.currentArtist,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                icon: Icon(
                  audioProvider.isPlaying ? Icons.pause : Icons.play_arrow,
                ),
                onPressed: () {
                  if (audioProvider.isPlaying) {
                    audioProvider.pause();
                  } else {
                    audioProvider.resume();
                  }
                },
              ),
              const SizedBox(width: 16),
            ],
          ),
        );
      },
    );
  }
}
