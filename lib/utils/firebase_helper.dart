import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';


class FirebaseHelper
{
  FirebaseAuth auth=FirebaseAuth.instance;
  static FirebaseHelper helper=FirebaseHelper._();
  FirebaseHelper._();
  User? user;

  Future<void> signUp(email,password)
  async {
    try {
       await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
      }
    } catch (e) {
    }
  }
  Future<void> signIn(email,password)
  async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
  bool checkUser()
  {
    user= auth.currentUser;
    return user!= null;
  }

  Future<UserCredential> signinGoogle()
  async {
    GoogleSignInAccount? googleUser= await GoogleSignIn().signIn();
    GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

   var credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return await auth.signInWithCredential(credential);
  }
  Future<void> signOut()
  async {
   await FirebaseAuth.instance.signOut();
  }
}