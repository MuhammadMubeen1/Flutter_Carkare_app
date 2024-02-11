import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class UpdateProfile extends StatefulWidget {
  const UpdateProfile({super.key});

  @override
  State<UpdateProfile> createState() => _UpdateProfileState();
}

class _UpdateProfileState extends State<UpdateProfile> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();

    final TextEditingController mobileNumberController =
        TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Update Profile",
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 19,
              letterSpacing: 0.7,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        leading: GestureDetector(
            onTap: () {},
            child: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
      ),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 30,
          ),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'assets/images/profile.png',
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Ali',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 19,
                  letterSpacing: 0.7,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/upload.png',
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Upload picture',
                style: GoogleFonts.inter(
                  textStyle: const TextStyle(
                    color: Color(0xFF0182D9),
                    fontSize: 15,
                    letterSpacing: 0.7,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              "Contact Number",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 50,
              child: CustomTextField(
                controller: mobileNumberController,
                hintText: '(+92) 3XXXXXXXXXX',
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Text(
              "Email",
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 50,
              child: CustomTextField(
                controller: emailController,
                hintText: 'email',
              ),
            ),
          ),
          const SizedBox(
            height: 35,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            margin: const EdgeInsets.symmetric(horizontal: 25),
            height: 50.0,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
                width: 1,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(8.0)),
            ),
            child: Text(
              'Update',
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xff0182D9),
                  fontSize: 15,
                  letterSpacing: 0.7,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: CustomButton(
                primaryColor: buttonPrimaryColor,
                secodaryColor: buttonSeconadryColor,
                onTap: () {},
                text: 'Logout',
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
