import 'package:flutter/material.dart';
void main() {
  runApp(TeamApp());
}

class TeamApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TeamApp",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.deepPurple,
        )
      ),
      home: Scaffold(appBar: AppBar(
        title: Text("TeamApp"),
      ),
      drawer: Drawer(),
      ),
    );
  }
}