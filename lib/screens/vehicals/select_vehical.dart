import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';

class SelectVehical extends StatefulWidget {
  const SelectVehical({Key? key}) : super(key: key);

  @override
  State<SelectVehical> createState() => _SelectVehicalState();
}

class _SelectVehicalState extends State<SelectVehical> {
  String? car;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Select Vehicle",
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
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 500,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: SizedBox(
                    height: 80,
                    child: Card(
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    color: const Color(0x200182D9),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/images/blue_car.png",
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Car Name",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF757678),
                                          fontSize: 14,
                                          letterSpacing: 0.7,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "ABK 0121",
                                      style: GoogleFonts.inter(
                                        textStyle: const TextStyle(
                                          color: Color(0xFF1C1C1C),
                                          fontSize: 16,
                                          letterSpacing: 0.7,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Radio(
                                value: '',
                                groupValue: car,
                                onChanged: (value) {
                                  setState(() {
                                    car = value.toString();
                                  });
                                }),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),
            ),
          ),
          const SizedBox(
            height: 10,
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
                text: 'Select',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
