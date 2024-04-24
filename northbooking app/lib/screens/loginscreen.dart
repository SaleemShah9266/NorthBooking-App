import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          padding: EdgeInsets.only(top: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // Image at the top center
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
              Text(
                'Sign in now',
                style: GoogleFonts.abel(
                  fontSize: 24, // Font size 24
                  color: Color(0xFFB3006D), // Purple color
                ),
              ),
              // Add some space

              Text(
                'Please sign in to continue ',
                style: GoogleFonts.aBeeZee(
                  fontSize: 16, // Font size 16
                  color: Color(0xFF069AFE), // Blue color
                ),
              ),
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
                        color: Colors.blue, // Blue color
                      ),
                      decoration: InputDecoration(
                        labelText: 'Email or Phone',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextFormField(
                      style: TextStyle(color: Color(0xFF069AFE)),
                      obscureText: !_passwordVisible,
                      decoration: InputDecoration(
                        labelText: 'Password',
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
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            // Add functionality for forgot password
                          },
                          child: Text(
                            'Forgot Password?',
                            style: GoogleFonts.abel(
                                fontSize: 16, // Font size 16
                                color: Color(0xFF069AFE) // Blue color
                                ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: GoogleFonts.abel(
                            fontSize: 16, // Font size 16
                            color: Colors.blue, // Blue color
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.abel(
                              fontSize: 16, // Font size 16
                              color: Color(0xFFB3006D),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Or connect',
                          style: GoogleFonts.abel(
                            fontSize: 16, // Font size 16
                            color: Colors.blue, // Blue color
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          icon: Icon(Icons.facebook),
                          onPressed: () {
                            // Add Facebook sign-in logic
                          },
                          color: Colors.blue,
                        ),
                        IconButton(
                          icon: Icon(Icons.facebook),
                          onPressed: () {
                            // Add Twitter sign-in logic
                          },
                          color: Colors.blue,
                        ),
                        IconButton(
                          icon: Icon(Icons.facebook),
                          onPressed: () {
                            // Add Google sign-in logic
                          },
                          color: Colors.blue,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            Color(0xFFB3006D),
                          ),
                          shape: MaterialStateProperty.all<OutlinedBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        onPressed: () {
                          // Implement your sign in logic here
                        },
                        child: Text(
                          'Login',
                          style: GoogleFonts.aBeeZee(
                            fontSize: 18, // Font size 16
                            color: Colors.white, // Blue color
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
      ),
    );
  }
}
