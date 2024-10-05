import 'package:spotify/domain/intities/song/song.dart';

abstract class NewsSongsState {}

class NewsSongsLoading extends NewsSongsState {}

class NewsSongsLoaded extends NewsSongsState {
  NewsSongsLoaded({required this.songs});
  final List<SongEntity> songs;
}

class NewsSongsLoadFailure extends NewsSongsState {}
