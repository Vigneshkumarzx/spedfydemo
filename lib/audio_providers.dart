import 'package:flutter/foundation.dart';
import 'package:just_audio/just_audio.dart';

class AudioProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();
  bool _isPlaying = false;
  String _currentSong = '';
  String _currentArtist = '';

  bool get isPlaying => _isPlaying;
  String get currentSong => _currentSong;
  String get currentArtist => _currentArtist;
  Duration get position => _audioPlayer.position;
  Duration get duration => _audioPlayer.duration ?? Duration.zero;

  void play(String url, {required String song, required String artist}) async {
    try {
      await _audioPlayer.setUrl(url);
      await _audioPlayer.play();
      _isPlaying = true;
      _currentSong = song;
      _currentArtist = artist;
      notifyListeners();
    } catch (e) {
      debugPrint('Error playing audio: $e');
    }
  }

  void pause() {
    _audioPlayer.pause();
    _isPlaying = false;
    notifyListeners();
  }

  void resume() {
    _audioPlayer.play();
    _isPlaying = true;
    notifyListeners();
  }

  void seek(Duration position) {
    _audioPlayer.seek(position);
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
