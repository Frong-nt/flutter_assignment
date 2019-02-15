import 'package:flutter/material.dart';
import 'ui/LoginScreen.dart';
import 'ui/RegisterScreen.dart';
import 'ui/Main.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        "/": (context) =>LoginScreen(),
        "/regist" :(context) => RegisterScreen(),
        "/Main" :(context) => MainScreen()

        },
    );
  }
}