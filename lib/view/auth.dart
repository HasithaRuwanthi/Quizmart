import 'package:firebase_auth/firebase_auth.dart';
import 'package:quizapp/model/usermodel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:quizapp/view/auth.dart';

class AuthService {
  FirebaseAuth auth = FirebaseAuth.instance;

  UserModel? _userFromFirebaseUser(User user) {
    // ignore: unnecessary_null_comparison
    return user != null ? UserModel(uid: user.uid) : null;
  }

  Stream<UserModel> get user {
    return auth.authStateChanges().map(_userFromFirebaseUser(user));
  }

  Future<void> signUp(email, password) async {
    try {
      User user = (await auth.createUserWithEmailAndPassword(
          email: email, password: password)) as User;
      _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    } catch (e) {
      print(e);
    }
  }

  Future<void> signIn(email, password) async {
    try {
      User user = (await auth.signInWithEmailAndPassword(
          email: email, password: password)) as User;

      _userFromFirebaseUser(user);
    } on FirebaseAuthException catch (e) {
      print(e);
    } catch (e) {
      print(e);
    }
  }
}