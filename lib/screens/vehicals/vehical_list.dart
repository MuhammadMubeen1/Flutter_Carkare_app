import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VehicalList extends StatefulWidget {
  const VehicalList({Key? key}) : super(key: key);

  @override
  State<VehicalList> createState() => _VehicalListState();
}

class _VehicalListState extends State<VehicalList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Vehicle List",
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
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Row(
              children: [
                Image.asset(
                  'assets/images/add.png',
                ),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(
                  'assets/images/delete.png',
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              itemCount: 5,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      Container(
                        height: 26,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0x200182D9),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        alignment: Alignment.center,
                        child: FittedBox(
                          fit: BoxFit.scaleDown,
                          child: Text(
                            "Hatch back",
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF0182D9),
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
