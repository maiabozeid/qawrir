import 'package:flutter/material.dart';
import 'package:qawarir/screens/sign_in_screen.dart';
import 'package:qawarir/screens/sign_up_screen.dart';
import 'package:qawarir/widget/blank_text.dart';
import 'package:qawarir/widget/custom_button.dart';

import '../../model/on_boarding_model.dart';
import 'dot_indicator.dart';

class PageThree extends StatefulWidget {
  static const String routeName = 'three';

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 0);

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4),
    child: SafeArea(
    child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            icon: Text(
              '',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500,color: Color(0xFFFF4572)),
            ),
            padding: EdgeInsets.zero, onPressed: () { Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageThree())); },)
        ],

      ),
    body:  Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Image.asset(
                  'assets/images/img-three.png',
                  fit: BoxFit.fill,
                  height: 350,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 5,
                ),
                // Image.asset(
                //   'assets/images/img-one-complete.png',
                //   fit: BoxFit.contain,
                //   height: 150,
                //   width: double.infinity,
                // ),

                BlankText(width: 150, height: 40),
                SizedBox(height: 20,),
                BlankText(width: 300, height: 30),
                SizedBox(height: 20,),
                BlankText(width: 280, height: 30),
                SizedBox(height: 20,),



                Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: ElevatedButton(
                          style: ButtonStyle(

                            backgroundColor: MaterialStateProperty.all(Colors.white),
                            padding: MaterialStateProperty.all(
                              EdgeInsets.all(13),

                            ),
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                                side: BorderSide(
                                  color: Color(0xFFFFFFFF),
                                ),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => SignInScreen()));
                          },

                          child: Text('Sign In',
                            style: TextStyle(
                              fontSize: 20,
                              color: Color(0xFFFF4572),
                              decorationColor: Colors.white,
                            ),),
                        ),
                      ),
SizedBox(height: 2,),
                     Padding(
                       padding: const EdgeInsets.all(10),
                       child: ElevatedButton(
                                style: ButtonStyle(

                                  backgroundColor: MaterialStateProperty.all(Colors.white),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.all(13),

                                  ),
                                  shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(25.0),
                                      side: BorderSide(
                                        color: Color(0xFFFFFFFF),
                                      ),
                                    ),
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                                },

                                child: Text('Sign Up',
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Color(0xFFFF4572),
                                    decorationColor: Colors.white,
                                  ),),
                              ),
                     ),
                          ]),
                        ],
                      ),
                    ),
              ),
    );
  }
}