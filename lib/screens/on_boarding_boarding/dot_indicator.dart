import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget{
final  PrimaryColor = Color(0xFFFF4572);
  final bool isActive;

  DotIndicator({this.isActive = false});

  @override
  Widget build(BuildContext context) {
   return AnimatedContainer(
     duration: Duration(milliseconds: 300),
     height: 12,
     width: 4,
     decoration: BoxDecoration(

       color: isActive ? Colors.black: PrimaryColor.withOpacity(0.8),
       borderRadius: BorderRadius.all(Radius.circular(12)),
     ),
   );
  }
}