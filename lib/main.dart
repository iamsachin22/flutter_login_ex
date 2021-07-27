import 'package:flutter/material.dart';
import 'package:login_tutorials/Utils/routes.dart';
import 'package:login_tutorials/constants.dart';
import 'package:login_tutorials/pages/LoginPage.dart';
import 'package:login_tutorials/pages/SignUpPage.dart';
import 'package:login_tutorials/pages/WelcomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      title: 'Flutter App',
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
      ),
     // home: WelcomePage(),
      initialRoute:'/login',
      routes: {
        MyRoute.welcomeRoute : (context) => WelcomePage(),
        MyRoute.loginRoute : (context) => LoginPage(),
        MyRoute.signUpRoute : (context) => SignUpPage(),
      },
    );
  }
}

