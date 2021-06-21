import 'package:flutter/material.dart';
import 'package:flutter_auth/Screens/Login/login_screen.dart';
import 'package:flutter_auth/main.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:lottie/lottie.dart';
import 'package:flutter_auth/Screens/Authentication/auth.dart';



class InfoPage extends StatelessWidget {
  static const TextStyle goldcoinGreyStyle = TextStyle(
      color: Colors.grey,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "LexendDeca");

  static const TextStyle goldCoinWhiteStyle = TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "LexendDeca");
  static const TextStyle goldCoinBlackStyle = TextStyle(
      color: Colors.black,
      fontSize: 20.0,
      fontWeight: FontWeight.bold,
      fontFamily: "LexendDeca");

  static const TextStyle greyStyle =
      TextStyle(fontSize: 40.0, color: Colors.grey, fontFamily: "LexendDeca");

  static const TextStyle whiteStyle =
      TextStyle(fontSize: 40.0, color: Colors.white, fontFamily: "LexendDeca");

  static const TextStyle blueStyle = TextStyle(
      fontSize: 40.0, color: Color(0xff404040), fontFamily: "LexendDeca");

  static const TextStyle boldStyle = TextStyle(
    fontSize: 50.0,
    color: Colors.black,
    fontFamily: "LexendDeca",
    fontWeight: FontWeight.bold,
  );

  static const TextStyle descriptionGreyStyle = TextStyle(
    color: Colors.grey,
    fontSize: 20.0,
    fontFamily: "LexendDeca",
  );

  static const TextStyle descriptionWhiteStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontFamily: "LexendDeca",
  );

  static const TextStyle descriptionBlueStyle = TextStyle(
    color: Color(0xff404040),
    fontSize: 20.0,
    fontFamily: "LexendDeca",
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LiquidSwipe(
          pages: [
            Container(
              color: Color(0xffb6e4f8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Projectholic",
                                style: goldCoinBlackStyle,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: goldCoinBlackStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: Lottie.asset("assets/Lottie/people.json",
                        width: 300, fit: BoxFit.fill),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Search",
                          style: greyStyle,
                        ),
                        Text(
                          "People",
                          style: boldStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Find partners and teammates\n"
                          "like you and work\n"
                          "on projects",
                          style: descriptionGreyStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // 1
            Container(
              color: Color(0xffefefef),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Projectholic",
                                style: goldcoinGreyStyle,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: goldcoinGreyStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  Lottie.asset("assets/Lottie/people working on project.json"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Work",
                          style: blueStyle,
                        ),
                        Text(
                          "on Projects",
                          style: boldStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Create and work\n"
                          "on projects and\n"
                          "cool ideas",
                          style: descriptionBlueStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // 2
             Container(
              color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Projectholic",
                                style: goldCoinWhiteStyle,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: goldCoinWhiteStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  Lottie.asset("assets/Lottie/manage.json"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Manage",
                          style: whiteStyle,
                        ),
                        Text(
                          "Projects",
                          style: boldStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Manage your\n"
                          "own projects!\n"
                          "",
                          style: descriptionWhiteStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // 3
            Container(
              color: Color(0xffEFEFEE),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Projectholic",
                                style: goldCoinWhiteStyle,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: goldCoinWhiteStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  Lottie.asset("assets/Lottie/connection.json"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Increase",
                          style: whiteStyle,
                        ),
                        Text(
                          "Networking",
                          style: boldStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Increase\n"
                          "and enchance your\n"
                          "connection",
                          style: descriptionWhiteStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // 4
            Container(
              color: Color(0xffb6cbe2),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage("assets/logo.png"),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Text(
                                "Projectholic",
                                style: goldcoinGreyStyle,
                              ),
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginScreen()));
                          },
                          child: Text(
                            "Login",
                            style: goldcoinGreyStyle,
                          ),
                        )
                      ],
                    ),
                  ),
                  Lottie.asset("assets/Lottie/plan.json"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Discussion",
                          style: blueStyle,
                        ),
                        Text(
                          "Rooms",
                          style: boldStyle,
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          "Chat,share,\n"
                          "discuss and \n"
                          "plan it",
                          style: descriptionBlueStyle,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            // 5
          ],
          enableLoop: true,
          fullTransitionValue: 300,
          // enableSlideIcon: true,
          waveType: WaveType.liquidReveal,
          positionSlideIcon: 0.5,
        ),
      ),
    );
  }
}
