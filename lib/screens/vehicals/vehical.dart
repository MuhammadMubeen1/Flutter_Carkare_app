import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';

class Vehical extends StatefulWidget {
  const Vehical({Key? key}) : super(key: key);

  @override
  State<Vehical> createState() => _VehicalState();
}

class _VehicalState extends State<Vehical> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Vehicle",
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/addVehical.png',
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Add Vehicle',
            style: GoogleFonts.inter(
              textStyle: const TextStyle(
                color: Color(0xFF1C1C1C),
                fontSize: 17,
                letterSpacing: 0.7,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55),
            child: Text(
              'Click Add button to add vehicle in your vehicle list',
              textAlign: TextAlign.center,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xFF757678),
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
            padding: const EdgeInsets.symmetric(horizontal: 70),
            child: SizedBox(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: CustomButton(
                primaryColor: buttonPrimaryColor,
                secodaryColor: buttonSeconadryColor,
                onTap: () {},
                text: 'ADD',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
