import 'package:flutter/material.dart';
import 'package:qawarir/screens/sign_in_screen.dart';

import '../constant/validation_utils.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = 'signUp';
  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool securedPassword = true;

  var formKey = GlobalKey<FormState>();

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: Container(
              padding: EdgeInsets.all(12),
              child: Form(
                key: formKey,
                child: SingleChildScrollView(
                  child: Column(
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
                        Text('Sign Up',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            )),
                        SizedBox(
                          height: 10,
                        ),
                        Text('Enter your information to \n create your account',
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
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please Enter Full Name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Full Name',
                            fillColor: Color(0xFFFF4572),
                            labelStyle: TextStyle(
                              color: Color(0xFFFF4572),),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                          controller: emailController,
                          validator: (text) {
                            if (text == null || text.trim().isEmpty) {
                              return 'Please Enter Email';
                            }
                            if (!ValidationUtils.isValidEmail(text)) {
                              return 'Please Enter Valid Email';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            fillColor: Color(0xFFFF4572),
                            labelStyle: TextStyle(
                              color: Color(0xFFFF4572),),
                            border: OutlineInputBorder(),
                          ),
                        ),
                        SizedBox(
                          height: 10,
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
                                color: Color(0xFFFF4572),),
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
                        SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(

                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Color(0xFFFF4572)),
                              padding: MaterialStateProperty.all(
                                EdgeInsets.all(15),
                              ),
                              shape:
                                  MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0),
                                  side: BorderSide(
                                    color: Color(0xFFFF4572),

                                  ),
                                ),
                              ),
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                decorationColor: Colors.white,

                              ),
                            )),
                        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                          Text(
                            "Already have account?",
                            style: TextStyle(
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushReplacementNamed(
                                  context, SignInScreen.routeName);
                            },
                            child: Text('Sign in',
                                style: TextStyle(
                                  color: Color(0xFFFF4572),
                                  fontSize: 15,
                                )),
                          ),
                        ]),
                      ]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
