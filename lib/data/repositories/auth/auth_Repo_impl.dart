import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';
import 'package:spotify/data/sources/auth/auth_firebase_service.dart';
import 'package:spotify/domain/repositories/auth/auth.dart';

import '../../../service_locator.dart';

class AuthRespositoryImpl extends AuthRepository {
  @override
  Future<Either> sinUp(CreateUserRequest createUserReq) async {
    return await sl<AuthFirebaseService>().signUp(createUserReq);
  }

  @override
  Future<Either> sinIn(SignInUserRequest signinUserRequest) async {
    return await sl<AuthFirebaseService>().signIn(signinUserRequest);
  }
}
