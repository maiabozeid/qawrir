import 'package:flutter/material.dart';
import 'package:qawarir/screens/sign_up_screen.dart';

import '../constant/validation_utils.dart';

class SignInScreen extends StatefulWidget {
  static const String routeName = 'signIn';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool securedPassword = true;

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();
  bool valuefirst = false;
  bool valuesecond = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          padding: EdgeInsets.only(top: 12, bottom: 12, right: 12, left: 12),
          child: Form(
            key: formKey,
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Image.asset(
                        'assets/images/img.png',
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Sign in',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Enter your information to \n access to your account',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.grey,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      controller: passwordController,
                      validator: (text) {
                        if (text == null || text.trim().isEmpty) {
                          return 'Please Enter Password';
                        }
                        if (text.length < 6) {
                          return 'Password Should Be at least 6 characters';
                        }
                        return null;
                      },
                      obscureText: securedPassword,
                      decoration: InputDecoration(
                          labelText: 'Password',
                          fillColor: Color(0xFFFF4572),
                          labelStyle: TextStyle(
                            color: Color(0xFFFF4572),
                          ),
                          border: OutlineInputBorder(),
                          suffixIcon: InkWell(
                              onTap: () {
                                securedPassword = !securedPassword;
                                setState(() {});
                              },
                              child: Icon(securedPassword
                                  ? Icons.visibility
                                  : Icons.visibility_off))),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Checkbox(
                                checkColor: Colors.greenAccent,
                                activeColor: Colors.red,
                                value: this.valuefirst,
                                onChanged: (value) {
                                  setState(() {
                                    valuefirst == value;
                                  });
                                },
                              ),
                              Text('Remeber me'),
                              SizedBox(
                                width: 80,
                              ),
                            ]),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUpScreen.routeName);
                            },
                            child: Text(
                              'Forget Password?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Color(0xFFFF4572),
                                fontSize: 15,
                              ),
                            )),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Color(0xFFFF4572)),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.all(15),
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
                        child: Text(
                          'Sign in',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            decorationColor: Colors.white,
                          ),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have account?",
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SignUpScreen.routeName);
                            },
                            child: Text(
                              'Create One',
                              style: TextStyle(
                                color: Color(0xFFFF4572),
                                fontSize: 15,
                              ),
                            )),
                      ],
                    ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
