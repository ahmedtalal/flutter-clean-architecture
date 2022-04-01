import 'package:firebase_auth/firebase_auth.dart';
import 'package:recipely_app_v1/src/core/errors/exceptions.dart';
import 'package:recipely_app_v1/src/core/errors/failures.dart';

class AuthFireStoreImp {
  const AuthFireStoreImp();
  static FirebaseAuth _auth = FirebaseAuth.instance;

  Future<UserCredential> loginFireStore(String email, String password) async {
    final UserCredential userCredential = await _auth
        .signInWithEmailAndPassword(email: email, password: password);
    return userCredential;
  }

  Future<UserCredential> registerFirestore(var model) async {
    final UserCredential userCredential =
        await _auth.createUserWithEmailAndPassword(
            email: model.email, password: model.password);
    return userCredential;
  }

  Future<dynamic> resetPasswordFirestore({required String email}) async {
    try {
      _auth.sendPasswordResetEmail(email: email);
      return null;
    } on FirebaseAuthException catch (e) {
      String message = Exceptions.authException(e);
      return CustomFailure(message: message);
    }
  }

  Future logOutFireStore() async {
    return await _auth.signOut();
  }

  Future updatePasswordFireStore(String newPass) async {
    return await _auth.currentUser!.updatePassword(newPass);
  }
}
