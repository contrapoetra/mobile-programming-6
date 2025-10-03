import 'package:flutter/material.dart';
import 'home.dart';
import 'tujuan.dart';
import 'login.dart';

void main() {
  runApp(Main());
}

class Main extends StatefulWidget {
  Main({Key? key}) : super(key: key);

  @override
  _MainState createState() => _MainState();
}

class _MainState extends State<Main> {
  bool loggedIn = false;

  void onLoginSuccess() {
    setState(() {
      loggedIn = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      initialRoute: loggedIn ? '/' : '/login',
      routes: {
        '/': (context) => const HomePage(),
        '/tujuan': (context) => const Player(),
        '/login': (context) => const LoginPage(),
      },
    );
  }
}
