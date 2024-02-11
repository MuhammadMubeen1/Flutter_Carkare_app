import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kar_care_user/models/wash_model.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Home",
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
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 84,
              child: Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 52,
                        width: 52,
                        alignment: Alignment.center,
                        decoration: const BoxDecoration(
                            color: Color(0x200182D9), shape: BoxShape.circle),
                        child: Text(
                          "A",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                              color: Colors.blue,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Hey",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color(0xFF757678),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Ali Hamza",
                                style: GoogleFonts.inter(
                                  textStyle: const TextStyle(
                                    color: Color(0xFF0182D9),
                                    fontSize: 17,
                                    fontWeight: FontWeight.w500,
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
                            height: 5,
                          ),
                          Text(
                            "We are excited to see you...",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF757678),
                                fontSize: 14,
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
          const SizedBox(
            height: 20,
          ),
          Image.asset(
            "assets/images/car_group.png",
            height: 150,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            margin: const EdgeInsets.only(left: 25),
            width: 240,
            alignment: Alignment.center,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                ...washList.map((e) => buildSingleCheckBox(e)).toList(),
              ],
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
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 135,
                width: 150,
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/blue_body_car.png",
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Your Vehicle list",
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )),
              ),
              const SizedBox(
                width: 37,
              ),
              SizedBox(
                height: 135,
                width: 150,
                child: Card(
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/white_car.png",
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Wash & wax Packages",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    )),
              ),
            ],
          )
        ],
      ),
    );
  }

  final washList = [
    Wash(title: "Wash"),
    Wash(title: "Wax"),
  ];
  Widget buildSingleCheckBox(Wash wash) {
    return buildCheckBox(
        wash: wash,
        onClick: () {
          setState(() {
            final newValue = !wash.value;
            wash.value = newValue;
          });
        });
  }

  Widget buildCheckBox({
    required Wash wash,
    required VoidCallback onClick,
  }) {
    return InkWell(
      onTap: onClick,
      child: Row(
        children: [
          Checkbox(
            activeColor: Colors.blue,
            value: wash.value,
            onChanged: (value) => onClick(),
          ),
          Text(wash.title,
              style: GoogleFonts.inter(
                textStyle: const TextStyle(
                  color: Color(0xFF1C1C1C),
                  fontSize: 19,
                  letterSpacing: 0.7,
                  fontWeight: FontWeight.bold,
                ),
              )),
        ],
      ),
    );
  }
}
