class Playlist {
  final String id;
  final String name;
  final String description;
  final String imageUrl;
  final String creator;
  final List<Song> songs;

  Playlist({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.creator,
    required this.songs,
  });
}

class Song {
  final String id;
  final String title;
  final String artist;
  final String album;
  final String imageUrl;
  final String url;
  final Duration duration;

  Song({
    required this.id,
    required this.title,
    required this.artist,
    required this.album,
    required this.imageUrl,
    required this.url,
    required this.duration,
  });
}
