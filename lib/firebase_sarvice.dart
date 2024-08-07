
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseSarvice {
  static FirebaseSarvice authServices = FirebaseSarvice._();
  FirebaseSarvice._();
  FirebaseAuth auth = FirebaseAuth.instance;

  Future<void> createAccountUsingEmail(String? email, String? pwd) async {
    UserCredential userCredential = await auth.createUserWithEmailAndPassword(
        email: email!, password: pwd!);
  }
}
