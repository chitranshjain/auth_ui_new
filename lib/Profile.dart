import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'FormField.dart';
import 'contants.dart';

class ProfileSetup extends StatefulWidget {
  @override
  _ProfileSetupState createState() => _ProfileSetupState();
}

class _ProfileSetupState extends State<ProfileSetup> {
  TextEditingController nameController = new TextEditingController(text: "");
  TextEditingController phoneController =
      new TextEditingController(text: "+91-");
  TextEditingController ageController = new TextEditingController(text: "");
  TextEditingController addressController = new TextEditingController(text: "");
  TextEditingController zipController = new TextEditingController(text: "");

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                        'Profile Details',
                        style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                              fontSize: 40, fontWeight: FontWeight.w400),
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        child: Text(
                          'Now that we\'ve got you registered, let\'s get a few of your details',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.mukta(
                            textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.black.withOpacity(0.6)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 0.02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Name',
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
                        controller: nameController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Mobile Number',
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
                        controller: phoneController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Age',
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
                        controller: ageController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Address',
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
                        controller: addressController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Zip',
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
                        controller: zipController,
                        obscureText: false,
                      ),
                      SizedBox(
                        height: 10,
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
                                  'Submit',
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
