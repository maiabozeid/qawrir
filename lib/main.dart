import 'package:flutter/material.dart';
import 'package:qawarir/screens/sign_in_screen.dart';
import 'package:qawarir/screens/sign_up_screen.dart';
import 'package:qawarir/splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashScreen2Sub.routeName,
      routes: {
        SignInScreen.routeName:(_)=>SignInScreen(),
        SignUpScreen.routeName:(_)=>SignUpScreen(),
        SplashScreen2Sub.routeName:(_)=>SplashScreen2Sub(),


      },
    );
  }
}
