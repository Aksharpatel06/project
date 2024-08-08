
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseSarvice {
  static FirebaseSarvice authServices = FirebaseSarvice._();
  FirebaseSarvice._();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAccountUsingEmail(String? email, String? pwd) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email!, password: pwd!);
    // auth.confirmPasswordReset(code: code, newPassword: newPassword)
    // auth.signInWithEmailAndPassword(email: email, password: password)
    // auth.isSignInWithEmailLink();
  }


  // signOut

  void signOut()
  {
    auth.signOut();
  }
}
