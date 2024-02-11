import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class AddVehical extends StatefulWidget {
  const AddVehical({Key? key}) : super(key: key);

  @override
  State<AddVehical> createState() => _AddVehicalState();
}

class _AddVehicalState extends State<AddVehical> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController modelController = TextEditingController();
  final TextEditingController carNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Add Vehicle",
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 70,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                "Car Name",
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
                  controller: nameController,
                  hintText: 'name',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Car Model",
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
                  controller: modelController,
                  hintText: 'model',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Car Number",
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
                  controller: carNumberController,
                  hintText: 'model',
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Text(
                "Body Type",
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
                  controller: carNumberController,
                  hintText: 'model',
                ),
              ),
            ),
            const SizedBox(
              height: 35,
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
                  text: 'ADD',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
