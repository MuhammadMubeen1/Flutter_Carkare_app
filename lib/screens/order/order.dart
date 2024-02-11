import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Order extends StatefulWidget {
  const Order({super.key});

  @override
  State<Order> createState() => _OrderState();
}

class _OrderState extends State<Order> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 50,
        toolbarOpacity: 0.5,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Center(
          child: Text(
            '''Order''',
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
            style: TextStyle(
              height: 1.171875,
              fontSize: 18.0,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              color: Color.fromARGB(255, 28, 28, 28),

              /* letterSpacing: 0.0, */
            ),
          ),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.arrow_back,
            color: Color.fromARGB(255, 28, 28, 28),
            size: 27,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.only(right: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 30, top: 0),
                        child: Container(
                          height: 70,
                          width: 280,
                          decoration: const BoxDecoration(
                            color: Color(0xFFFFFFFF),
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15, top: 12),
                        child: Container(
                          width: 48.0,
                          height: 48.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffe1f0fa),
                            borderRadius:
                                BorderRadius.all(Radius.circular(8.0)),
                          ),
                          child: Column(children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Image.asset(
                                'assets/images/star.png',
                                color: const Color(0xff0182D9),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 0),
                              child: Image.asset(
                                'assets/images/car7.png',
                                color: const Color(0xff0182D9),
                              ),
                            ),
                          ]),
                        ),
                      ),
                      Column(
                        children: [
                          const Padding(
                            padding:
                                EdgeInsets.only(left: 30, top: 15, right: 75),
                            child: Text(
                              'Vehical ',
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 14.0,
                                color: Color(0xff1C1C1C),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 80, right: 20),
                            child: Row(
                              children: const [
                                Text(
                                  'Alo VXR 2019 ',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.0,
                                    color: Color(0xff757678),
                                  ),
                                ),
                                Text(
                                  "AbK 0121",
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 220, top: 8),
              child: Text(
                "Delivery Address",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  letterSpacing: -0.4,
                  color: Color(0xff1C1C1C),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 60, top: 8),
              child: Text(
                "14 Shami Rs, Relo Ground, Lahore, Punjab, \n Pakistan ",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  fontSize: 14.0,
                  letterSpacing: -0.4,
                  color: Color(0xff757678),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 250, top: 8),
              child: Text(
                "Data & Time",
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  fontSize: 14.0,
                  letterSpacing: -0.4,
                  color: Color(0xff1C1C1C),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(right: 5, top: 5),
                    child: Text(
                      "21-09-2022( Tuseday )",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 14.0,
                        letterSpacing: -0.4,
                        color: Color(0xff757678),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5, right: 30),
                    child: Center(
                      child: Container(
                        width: 100.0,
                        height: 28.0,
                        decoration: const BoxDecoration(
                          color: Color(0xffe1f0fa),
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Text(
                              "9:00-9:30",
                              style: TextStyle(
                                fontFamily: 'Inter',
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                fontSize: 12.0,
                                color: Color(0xff0182D9),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 1,
              height: 40,
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 280),
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffC9CCD3),
                    radius: 22,
                    child: Image.asset(
                      'assets/images/mubeen3.png',
                      fit: BoxFit.cover,
                    ), //Text
                  ),
                ), //CircleAvatar

                const Padding(
                  padding: EdgeInsets.only(left: 60, top: 5),
                  child: Text(
                    'Rider Name',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w600,
                      fontSize: 14.0,
                      color: Color(0xff1C1C1C),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 60, top: 25),
                  child: Text(
                    'rider location',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.0,
                      color: Color(0xff757678),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 230, top: 5),
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffDF3831),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/mubeen4.png',
                    ), //Text ,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 300, top: 5),
                  child: Container(
                    width: 35.0,
                    height: 35.0,
                    decoration: BoxDecoration(
                      color: const Color(0xff0182D9),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Image.asset(
                      'assets/images/mubeen5.png',
                    ), //Text ,
                  ),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 40,
            )
          ]),
        ),
      ),
    );
  }
}
