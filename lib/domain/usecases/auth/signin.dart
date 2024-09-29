import 'package:dartz/dartz.dart';
import 'package:spotify/core/usecase/usecase.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';
import 'package:spotify/domain/repositories/auth/auth.dart';
import 'package:spotify/service_locator.dart';

class SignInUseCase implements UseCase<Either, SignInUserRequest> {
  @override
  Future<Either> call({SignInUserRequest? params}) {
    return sl<AuthRepository>().sinIn(params!);
  }
}
