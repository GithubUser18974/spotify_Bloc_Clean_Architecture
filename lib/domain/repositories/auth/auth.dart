import 'package:dartz/dartz.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthRepository {
  Future<Either> sinUp(CreateUserRequest createuserReq);
  Future<void> sinIn();
}
