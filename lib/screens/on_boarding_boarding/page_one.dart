import 'package:flutter/material.dart';
import 'package:qawarir/screens/on_boarding_boarding/page_three.dart';
import 'package:qawarir/screens/on_boarding_boarding/page_two.dart';
import 'package:qawarir/widget/blank_text.dart';
import 'package:qawarir/widget/custom_button.dart';

import '../../model/on_boarding_model.dart';
import 'dot_indicator.dart';
import 'on_board_content.dart';

class PageOne extends StatefulWidget {

  static const String routeName = 'one';

  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
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
        child:
        Scaffold(
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

          body: PageView.builder(
            itemCount: onBoardingContents.length,
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _pageIndex = index;
              });
            },
            itemBuilder: (context, index) =>  Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
              Image.asset(
                'assets/images/img-one.png',
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


                  ...List.generate(
                      onBoardingContents.length,
                          (index) => Padding(
                        padding: const EdgeInsets.all(6.0),
                        child: DotIndicator(
                          isActive: index == _pageIndex,
                        ),
                      )),

                  SizedBox(height: 20,),
              CustomButton(name: 'Next', onPressed: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PageTwo()));
              }),
            ]),
          ),
        ),
      ),
    );
  }
}
