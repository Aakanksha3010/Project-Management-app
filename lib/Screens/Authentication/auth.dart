import 'package:firebase_auth/firebase_auth.dart';

class AuthService{
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // AuthService(this._firebaseAuth);

  Stream<User> get  userDetail => _firebaseAuth.authStateChanges();

  
  // logic for sign out
  Future<void> signOut() async{
    await _firebaseAuth.signOut();
  }

  // logic for sign-in
  Future<String> signIn({String email,String password}) async{
    print("yaha");
    print(email);
    print(password);
    try{
      dynamic temp = await _firebaseAuth.signInWithEmailAndPassword(email: email.trim(), password: password.trim());
      print(temp);
      return "Signed in"; 
    } on FirebaseAuthException catch(e){
      print(e.message);
      if (e.code == 'weak-password') {
       print('The password provided is too weak.');
      }else if (e.code == 'email-already-in-use'){
        print('The account already exists for that email.');
      }
      return null;
    }
  }

  // logic for sign up
  Future<String> signUp({String email,String password}) async{
    try{
      await _firebaseAuth.createUserWithEmailAndPassword(email: email.trim(), password: password.trim());
      return "Signed up";
    }on FirebaseAuthException catch(e){
      return e.message;
    }
  }

}