import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/OTpscreen.dart';

import 'package:testapp/screens/loginscreen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      width: 150,
                      height: 150,
                      child: Image.asset(
                        'assets/images/logo.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                    SizedBox(height: 10), // Spacer

                    // Text below the image
                    Text('Sign Up now',
                        style: GoogleFonts.abel(
                          fontSize: 26, // Font size 16
                          color: Color(0xFFB3006D),
                        )),
                    // Add some space

                    Text('Create an Account ',
                        style: GoogleFonts.aBeeZee(
                            fontSize: 16, // Font size 16
                            color: Color(0xFF069AFE))),
                    SizedBox(
                      height: 30,
                    ),

                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Column(
                        children: <Widget>[
                          TextFormField(
                            style: GoogleFonts.abel(
                                fontSize: 16, // Font size 16
                                color: Colors.blue),
                            decoration: InputDecoration(
                              labelText: 'Name',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            style: GoogleFonts.abel(
                                fontSize: 16, // Font size 16
                                color: Colors.blue),
                            decoration: InputDecoration(
                              labelText: 'CNIC',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            style: GoogleFonts.abel(
                              fontSize: 16, // Font size 16
                              color: Colors.blue,
                            ),
                            decoration: InputDecoration(
                              labelText: 'Contact',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            style: GoogleFonts.abel(
                              fontSize: 16, // Font size 16
                              color: Colors.blue,
                            ),
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(
                                  10,
                                ),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  color: Colors.blue,
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextFormField(
                            style: GoogleFonts.abel(
                              fontSize: 16, // Font size 16
                              color: Colors.blue,
                            ),
                            obscureText: !_passwordVisible,
                            decoration: InputDecoration(
                              labelText: 'Confirm Password',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  color: Colors.blue,
                                  _passwordVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 50, // Set to match parent width
                            // Set the desired height
                            child: ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    Color(0xFFB3006D)),
                                shape:
                                    MaterialStateProperty.all<OutlinedBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => OTPScreen()),
                                );
                                // Implement your sign up logic here
                              },
                              child: Text(
                                'Sign Up',
                                style: GoogleFonts.aBeeZee(
                                  fontSize: 16, // Font size 16
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
