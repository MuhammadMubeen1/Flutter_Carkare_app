import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PackageDetail extends StatefulWidget {
  const PackageDetail({Key? key}) : super(key: key);

  @override
  State<PackageDetail> createState() => _PackageDetailState();
}

class _PackageDetailState extends State<PackageDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.4,
        centerTitle: true,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Text(
          "Package Detail",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        child: SizedBox(
          height: 600,
          child: Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(18),
            ),
            child: Column(
              children: [
                Container(
                  height: 160,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0x20B2C443),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Image.asset("assets/images/yellow_car.png"),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Weekly Package",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF1C1C1C),
                      fontSize: 18,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Divider(
                  color: Color(0xFFE7E7E7),
                  thickness: 1,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Price",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0xFF757678),
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Rs 1299",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0x201C1C1C),
                                fontSize: 18,
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.red,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Rs 1299",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 18,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                                letterSpacing: 0.5,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  height: 110,
                  width: double.infinity,
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF5F5F5),
                    // borderRadius: BorderRadius.only(
                    //   topLeft: Radius.circular(18),
                    //   topRight: Radius.circular(18),
                    // ),
                  ),
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF0182D9),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Premium Car",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Washes",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFFDF3831),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "per month",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "Plus",
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: GoogleFonts.inter(
                          textStyle: const TextStyle(
                            color: Color(0xFF757678),
                            fontSize: 14,
                            // decoration: TextDecoration.lineThrough,
                            // decorationColor: Colors.red,
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "4",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF0182D9),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Premium Car",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Washes",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFFDF3831),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "per month",
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.center,
                            style: GoogleFonts.inter(
                              textStyle: const TextStyle(
                                color: Color(0xFF1C1C1C),
                                fontSize: 14,
                                // decoration: TextDecoration.lineThrough,
                                // decorationColor: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
