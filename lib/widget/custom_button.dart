import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {

  final String name;

  final VoidCallback onPressed;


  CustomButton({required this.name, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
          child: ElevatedButton(
            style: ButtonStyle(

              backgroundColor: MaterialStateProperty.all(Colors.white),
              padding: MaterialStateProperty.all(
                EdgeInsets.all(9),

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
              onPressed();
            },

            child: Text(name,
              style: TextStyle(
                fontSize: 20,
                color: Color(0xFFFF4572),
                decorationColor: Colors.white,
              ),),
          ),
        ),
      ],
    );
  }
}