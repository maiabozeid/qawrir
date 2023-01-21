import 'package:flutter/material.dart';
import 'package:qawarir/screens/on_boarding_boarding/page_one.dart';
import 'package:qawarir/screens/on_boarding_boarding/page_three.dart';
import 'package:qawarir/widget/blank_text.dart';
import 'package:qawarir/widget/custom_button.dart';


class PageTwo extends StatefulWidget {
  static const String routeName = 'two';

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {

  int currentIndex = 0;

  PageController _pageController = PageController(initialPage: 1);

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 1);
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
                    'Skip',
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
                  'assets/images/img-two.png',
                  fit: BoxFit.fill,
                  height: 350,
                  width: double.infinity,
                ),
                SizedBox(
                  height: 10,
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


                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(

                        backgroundColor: MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                          EdgeInsets.all(20),

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
                            MaterialPageRoute(builder: (context) => PageOne()));
                      },

                      child: Text('Previous',
                        style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFFFF4572),
                          decorationColor: Colors.white,
                        ),),
                    ),

                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20),
                          child: ElevatedButton(
                            style: ButtonStyle(

                              backgroundColor: MaterialStateProperty.all(Colors.white),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(20),

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
                                  MaterialPageRoute(builder: (context) => PageThree()));
                            },

                            child: Text('Next',
                              style: TextStyle(
                                fontSize: 20,
                                color: Color(0xFFFF4572),
                                decorationColor: Colors.white,
                              ),),
                          ),
                        ),
                      ],
                    ),
              ]),
        ]),
      ),
      ),
        );
  }
}
