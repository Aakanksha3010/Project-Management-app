import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Authentication/auth.dart';
import 'package:flutter_auth/Screens/Homepage/homepage.dart';
// import 'package:flutter_auth/Screens/Login/login_screen.dart';
// import 'package:flutter_auth/Screens/Welcome/welcome_screen.dart';
import 'package:flutter_auth/constants.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_auth/Screens/Information/info.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      initialData: null,
      value: AuthService().userDetail,
      child: AuthWrapper(),
    );
  }
}

class AuthWrapper extends StatefulWidget {
  const AuthWrapper({Key key}) : super(key: key);

  @override
  _AuthWrapperState createState() => _AuthWrapperState();
}

class _AuthWrapperState extends State<AuthWrapper> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);
    // print(user);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: SplashScreenView(
        navigateRoute: user != null ? HomePage() : InfoPage(),
        imageSrc: 'assets/images/splash.gif',
        text: 'Projectholic',
        textType: TextType.ColorizeAnimationText,
        textStyle: TextStyle(
          fontSize: 40.0,
        ),
        colors: [
          Colors.white,
          Colors.blue,
          Colors.yellow,
          Colors.red,
        ],
        imageSize: 600,
        duration: 8000,
        backgroundColor: Colors.deepPurple,
        pageRouteTransition: PageRouteTransition.CupertinoPageRoute,
      ),
    );
  }
}
