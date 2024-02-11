import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';
import '../../widgets/widgets.dart';
import 'sign_in.dart';
import 'verify.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _cnicController = TextEditingController();
  final TextEditingController _mobileNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: const Icon(
          Icons.arrow_back,
          color: Color(0xFF1C1C1C),
        ),
        title: Text(
          "Register",
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 19,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Hey",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFF757678),
                          fontSize: 18,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Image.asset("assets/images/hand.png"),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset("assets/images/welcome.png"),
                    const SizedBox(
                      width: 15,
                    ),
                    Image.asset("assets/images/kar_care.png"),
                  ],
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    "Enter your Name",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 14,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: CustomTextField(
                    controller: _nameController,
                    hintText: 'Your name',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    "Enter your mobile number",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 14,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: CustomTextField(
                    controller: _mobileNumberController,
                    hintText: '(+92) 3XXXXXXXXXX',
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text(
                    "Enter your CNIC",
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 14,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 50,
                  child: CustomTextField(
                    controller: _cnicController,
                    hintText: 'Your CNIC',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    text: 'Send OPT',
                    primaryColor: buttonPrimaryColor,
                    secodaryColor: buttonSeconadryColor,
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const VerfiyOTP(),
                        ),
                      );
                    },
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ALREADY HAVE AN ACCOUNT?",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 12,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SingIn(),
                          ),
                        );
                      },
                      child: Text(
                        "SIGN IN",
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Colors.blue,
                            fontSize: 12,
                            letterSpacing: 0.7,
                            fontWeight: FontWeight.w500,
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
    );
  }
}
