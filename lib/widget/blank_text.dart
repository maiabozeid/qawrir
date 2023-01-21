import 'package:flutter/material.dart';

class BlankText extends StatelessWidget {
final double width;
final double height;


BlankText({required this.width,required this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height:height,
      alignment: Alignment.center,
      decoration: BoxDecoration(

        color: Colors.white,
        border: Border.all(color: Colors.red, width: 4.0),
        borderRadius: BorderRadius.all(Radius.circular(30)),),
      child:Text('',
          style: TextStyle(
            fontSize: 20,
          )),
    );
  }
}
