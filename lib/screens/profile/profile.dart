import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Account",
          overflow: TextOverflow.visible,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(
            textStyle: const TextStyle(
              color: Color(0xFF1C1C1C),
              fontSize: 20,
              letterSpacing: 0.7,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 30,
          ),
          Image.asset(
            'assets/images/profile.png',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
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
            height: 10,
          ),
          const Divider(
            thickness: 1,
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Mobile Number',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 16,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                Text(
                  '0332-3200001',
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF757678),
                      fontSize: 15,
                      letterSpacing: 0.7,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            height: 50,
          ),
          const SizedBox(
            height: 20,
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
            height: 30,
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
