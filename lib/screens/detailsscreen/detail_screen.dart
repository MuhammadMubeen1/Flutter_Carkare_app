import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
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
            '''Details''',
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
          padding: const EdgeInsets.only(top: 5),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 20, right: 20, top: 0),
                        child: Container(
                          height: 70,
                          width: 320,
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
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 3, right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Location",
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w600,
                        fontSize: 16.0,
                      ),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    Container(
                      width: 132.0,
                      height: 28.0,
                      decoration: const BoxDecoration(
                        color: Color(0xffe1f0fa),
                        borderRadius: BorderRadius.all(Radius.circular(4.0)),
                      ),
                      child: Row(children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 3),
                          child: Image.asset('assets/images/vector1.png'),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text(
                          "Change Location",
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            fontSize: 12.0,
                            color: Color(0xff0182D9),
                          ),
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 15, top: 15),
                child: Container(
                  width: 315.0,
                  height: 80.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffF0F0EC),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 40),
                      child: Container(
                        width: 32.0,
                        height: 32.0,
                        decoration: const BoxDecoration(
                          color: Color(0xffe1f0fa),
                        ),
                        child: Image.asset(
                          'assets/images/vector2.png',
                        ),
                      ),
                    ),
                  ]),
                ),
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
                padding: const EdgeInsets.only(right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 0, top: 5),
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
                            borderRadius:
                                BorderRadius.all(Radius.circular(4.0)),
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
              const SizedBox(
                height: 5,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 210),
                child: Text(
                  'What’s included ?',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w700,
                    fontSize: 14.0,
                    color: Color(0xff1C1C1C),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 18),
                child: Container(
                  width: 320.0,
                  height: 160.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffF5F5F5),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10, left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Full body car wash',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 130,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '2',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Snow foam shampoo',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 115,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '3',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Full interior clean',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 138,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '4',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Car mat wash',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 155,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5, left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '5',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Interior luster polish',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 120,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            children: [
                              const Padding(
                                padding: EdgeInsets.all(0),
                                child: Text(
                                  '6',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12.0,
                                    color: Color(0xff1C1C1C),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                'Microfiber Drying',
                                style: TextStyle(
                                  fontFamily: 'Inter',
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12.0,
                                  color: Color(0xff757678),
                                ),
                              ),
                              const SizedBox(
                                width: 135,
                              ),
                              Container(
                                height: 17,
                                width: 17,
                                decoration: const BoxDecoration(
                                  color: Color(0xff00CB87),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                ),
                                child: const Icon(
                                  Icons.check,
                                  color: Colors.white,
                                  size: 15,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 0),
                child: Center(
                  child: CustomButton(
                    onTap: () {},
                    text: 'Next',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
