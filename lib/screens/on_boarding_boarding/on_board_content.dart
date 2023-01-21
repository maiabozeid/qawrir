import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../widget/blank_text.dart';

class OnBoardContent extends StatelessWidget {
  final String image;

  OnBoardContent({
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(
                        image,
                        alignment: Alignment.topLeft,
                        height: double.infinity,
                        width: 200,
                      ),



              // const Spacer(),

              BlankText(
                width: 131,
                height: 40,
              ),

              const SizedBox(
                height: 10,
              ),
              BlankText(
                width: 248,
                height: 20,
              ),
              const SizedBox(
                height: 10,
              ),
              BlankText(
                width: 221,
                height: 20,
              ),
              const Spacer(),
    ]),
      ),
            );
  }
}
