import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:restaurant/Screen/HomeScreen.dart';
import 'package:restaurant/Screen/SplashScreen.dart';
import 'package:restaurant/Screen/login/LoginScreen.dart';
import 'package:restaurant/Screen/restaurantscreen.dart';
import 'package:restaurant/Screen/wrapper.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'restaurant app',
      theme: ThemeData(),
      routes: {
        '/': (context) => Splash(),
      },
    );
  }
}
