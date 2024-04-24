import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/screens/home.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // This line removes the back icon
        title: Text("Verification"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                "OTP Verification",
                style: GoogleFonts.abel(
                  fontSize: 26, // Font size 16
                  color: Colors.purple, // Blue color
                ),
              ),
              Text(
                "You will receive an OTP this number ",
                style: GoogleFonts.aBeeZee(
                  fontSize: 15, // Font size 16
                  color: Colors.blue, // Blue color
                ),
              ),
              Text(
                "+923165971689 ",
                style: GoogleFonts.aBeeZee(
                  fontSize: 15, // Font size 16
                  color: Colors.purple, // Blue color
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  myInputBox(context, txt1),
                  myInputBox(context, txt2),
                  myInputBox(context, txt3),
                  myInputBox(context, txt4),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "00:30",
                style: GoogleFonts.aBeeZee(
                  fontSize: 15, // Font size 16
                  color: Colors.purple, // Blue color
                ),
              ),
              SizedBox(
                height: 30,
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
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    'submit',
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
      ),
    );
  }
}

Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 70,
    width: 60,
    decoration: BoxDecoration(
        border: Border.all(width: 1), borderRadius: BorderRadius.circular(10)),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: GoogleFonts.abel(
        fontSize: 24, // Font size 16
        color: Colors.blue, // Blue color
      ),
      decoration: InputDecoration(counterText: ""),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}
