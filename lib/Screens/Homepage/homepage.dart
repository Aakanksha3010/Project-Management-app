import'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Authentication/auth.dart';
import 'package:flutter_auth/main.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final  AuthService _firebaseAuth = AuthService();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("HOME"),
            MaterialButton(
              onPressed: () async{
                await _firebaseAuth.signOut();
                Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(builder: (context) => AuthWrapper()),
                  (Route<dynamic> route) => false);
                
              },
              child: Text("Sign out"),
            ),
          ],
        ),
      ),
    );
  }
}