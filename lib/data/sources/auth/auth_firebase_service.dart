import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserRequest createuserReq);
  Future<void> signIn();
}

class AuthFirebaseServiceimpl extends AuthFirebaseService {
  @override
  Future<void> signIn() async {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<Either> signUp(CreateUserRequest createuserReq) async {
    // TODO: implement signUp
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createuserReq.email, password: createuserReq.password);
      return Right('SignUp Successuful ');
    } on FirebaseAuthException catch (e) {
      String MSG = '';
      if (e.code == "weak-password") {
        MSG = "The Password Is too weak";
      } else if (e.code == 'email-already-in-use') {
        MSG = "Account already exist with that email";
      } else {
        MSG = "WE Encountered an error please try again";
      }
      return Left(MSG);
    }
  }
}
