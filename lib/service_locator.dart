import 'package:get_it/get_it.dart';
import 'package:spotify/data/repositories/auth/auth_Repo_impl.dart';
import 'package:spotify/data/repositories/song/song_repository.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/data/sources/songs/song_firebase_service.dart';
import 'package:spotify/domain/repositories/auth/auth.dart';
import 'package:spotify/domain/repositories/song/song.dart';
import 'package:spotify/domain/usecases/auth/signin.dart';
import 'package:spotify/domain/usecases/auth/signup.dart';
import 'package:spotify/domain/usecases/song/get_news_songs.dart';

final sl = GetIt.instance;
Future<void> InitializedDependecies() async {
  sl.registerSingleton<AuthFirebaseService>(AuthFirebaseServiceimpl());
  sl.registerSingleton<AuthRepository>(AuthRespositoryImpl());
  sl.registerSingleton<SignUpUseCase>(SignUpUseCase());
  sl.registerSingleton<SignInUseCase>(SignInUseCase());
  sl.registerSingleton<GetNewsSongsUseCase>(GetNewsSongsUseCase());
  sl.registerSingleton<SongsRepository>(SongRepositoryImpl());
  sl.registerSingleton<SongFirebaseService>(SongFirebaseServiceimpl());
}
