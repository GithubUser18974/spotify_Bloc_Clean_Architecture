import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';

abstract class AuthFirebaseService {
  Future<void> signUp(CreateUserRequest createuserReq);
  Future<void> signIn();
}

class AuthFirebaseServiceimpl extends AuthFirebaseService {
  @override
  Future<void> signIn() async {
    // TODO: implement signIn
    throw UnimplementedError();
  }

  @override
  Future<void> signUp(CreateUserRequest createuserReq) async {
    // TODO: implement signUp
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createuserReq.email, password: createuserReq.password);
    } on FirebaseAuthException catch (e) {}
  }
}
