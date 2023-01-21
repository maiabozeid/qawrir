import 'dart:async';
import 'package:flutter/material.dart';

import '../screens/on_boarding_boarding/page_one.dart';


class SplashScreen2Sub extends StatefulWidget {
  static const String routeName = 'splash';
  @override
  _SplashScreen2SubState createState() => _SplashScreen2SubState();
}

class _SplashScreen2SubState extends State<SplashScreen2Sub> {
  bool _a = false;

  @override
  void initState() {
    super.initState();
    Timer(Duration(milliseconds: 100), () {
      setState(() {
        _a = !_a;
      });
    });
    Timer(Duration(milliseconds: 4000), () {
      Navigator.of(context)
          .pushReplacement(SlideTransitionAnimation(PageOne()));
    });
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xFFFF4572),
      body: Stack(
        children: [
          AnimatedContainer(
            duration: Duration(milliseconds: 2000),
            curve: Curves.fastLinearToSlowEaseIn,
            width: _a ? _width : 0,
            height: _height,
            color: Color(0xFFFF4572),
          ),
          Center(
            child: Image.asset('assets/images/splash.png',
            width: 150,
            height: 150,
              fit: BoxFit.fill,
            )
          ),
        ],
      ),
    );
  }
}

class SlideTransitionAnimation extends PageRouteBuilder {
  final Widget page;

  SlideTransitionAnimation(this.page)
      : super(
      pageBuilder: (context, animation, anotherAnimation) => page,
      transitionDuration: Duration(milliseconds: 2000),
      transitionsBuilder: (context, animation, anotherAnimation, child) {
        animation = CurvedAnimation(
          curve: Curves.fastLinearToSlowEaseIn,
          parent: animation,
        );
        return SlideTransition(
          position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0))
              .animate(animation),
          textDirection: TextDirection.rtl,
          child: page,
        );
      });
}

