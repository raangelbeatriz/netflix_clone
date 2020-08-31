import 'package:flutter/material.dart';
import 'package:netflix_clone/screens/first_page.dart';
import 'package:netflix_clone/screens/login_page.dart';
import 'package:netflix_clone/screens/main_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          backgroundColor: Colors.black,
          scaffoldBackgroundColor: Colors.black,
          brightness: Brightness.dark,
          primaryColor: Colors.black),
      initialRoute: '/FirstPage',
      routes: {
        '/FirstPage': (context) => FirstPage(),
        '/Login': (context) => LoginPage(),
        '/Main': (context) => MainPage(),
      },
    );
  }
}
