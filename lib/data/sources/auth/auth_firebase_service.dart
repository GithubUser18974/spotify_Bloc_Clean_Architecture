import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:spotify/data/models/auth/create_user_req.dart';
import 'package:spotify/data/models/auth/signin_user_request.dart';

abstract class AuthFirebaseService {
  Future<Either> signUp(CreateUserRequest createuserReq);
  Future<Either> signIn(SignInUserRequest signInUserRequest);
}

class AuthFirebaseServiceimpl extends AuthFirebaseService {
  @override
  Future<Either> signIn(SignInUserRequest signInUserRequest) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: signInUserRequest.email, password: signInUserRequest.password);
      return Right('Sign in Successuful ');
    } on FirebaseAuthException catch (e) {
      String MSG = '';
      if (e.code == "invalid-email") {
        MSG = "Not User Found for that email";
      } else if (e.code == 'invalid-credential') {
        MSG = "Wrong password provided for that user";
      } else {
        MSG = "WE Encountered an error please try again";
      }
      return Left(MSG);
    }
  }

  @override
  Future<Either> signUp(CreateUserRequest createuserReq) async {
    // TODO: implement signUp
    try {
      var data = await FirebaseAuth.instance.createUserWithEmailAndPassword(
          email: createuserReq.email, password: createuserReq.password);
      FirebaseFirestore.instance.collection('users').add({
        'name': createuserReq.FullName,
        'email': data.user?.email,
      });
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
