import 'package:chat_app/helpers/helper_fun.dart';
import 'package:chat_app/services/database_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  // login

  Future loginwithusernameandpassword(String email, String password) async {
    try {
      User user = (await firebaseAuth.signInWithEmailAndPassword(
              email: email, password: password))
          .user!;
      if (user != null) {
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  //ragister
  Future ragisterUserWithEmailandPassword(
      String fullname, String email, String password) async {
    try {
      User user = (await firebaseAuth.createUserWithEmailAndPassword(
              email: email, password: password))
          .user!;
      if (user != null) {
        await DatabaseService(uid: user.uid).updateUserData(fullname, email);
        return true;
      }
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  // signout

  Future signout() async {
    try {
      await HelperFunctions.saveUserLoggedInStatus(false);
      await HelperFunctions.saveUserEmailSF("");
      await HelperFunctions.saveUserNameSF("");

      await firebaseAuth.signOut();
    } catch (e) {
      return null;
    }
  }

  loginWithUserNameandPassword(String email, String password) {}
}
