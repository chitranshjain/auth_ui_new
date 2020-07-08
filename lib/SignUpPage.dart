import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FormField.dart';
import 'contants.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController emailController = new TextEditingController(text: "");
  TextEditingController pwController = new TextEditingController(text: "");

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Container(
            height: size.height,
            width: size.width,
            color: myPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 20.0,
                        spreadRadius: 0.3)
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Sign Up',
                        style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w400),
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'It\'s free and only takes a few moments',
                        style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.6)),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Email address',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.mukta(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomFormField(
                        size: size,
                        controller: emailController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Password',
                            textAlign: TextAlign.start,
                            style: GoogleFonts.mukta(
                              textStyle: TextStyle(
                                  color: Colors.black.withOpacity(0.6),
                                  fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      CustomFormField(
                        size: size,
                        controller: pwController,
                        obscureText: true,
                      ),
                      SizedBox(
                        height: 48,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              if (_formKey.currentState.validate()) {
                                print('Validated');
                              }
                            },
                            child: Container(
                              height: size.height * 0.06,
                              width: size.width * 0.8,
                              decoration: BoxDecoration(
                                color: myPrimaryColor,
                                borderRadius: BorderRadius.circular(6),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black,
                                      blurRadius: 4.0,
                                      spreadRadius: 0.5),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Sign up',
                                  style: GoogleFonts.mukta(
                                      textStyle: TextStyle(
                                          color: Colors.white,
                                          fontSize: 25,
                                          fontWeight: FontWeight.w400)),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 200,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Already registered?',
                            style: GoogleFonts.mukta(
                                textStyle: TextStyle(
                                    color: Colors.black.withOpacity(0.6),
                                    fontSize: 18)),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              'Sign In',
                              style: GoogleFonts.mukta(
                                  textStyle: TextStyle(
                                      color: myPrimaryColor,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
