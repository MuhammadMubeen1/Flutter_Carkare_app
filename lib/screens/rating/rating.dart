import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class rating extends StatefulWidget {
  const rating({super.key});

  @override
  State<rating> createState() => _ratingState();
}

class _ratingState extends State<rating> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 70,
        toolbarOpacity: 0.5,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Center(
          child: Padding(
            padding: EdgeInsets.only(right: 60),
            child: Text(
              '''Rating''',
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
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 25),
                child: Center(
                  child: CircleAvatar(
                    backgroundColor: const Color(0xffC9CCD3),
                    radius: 55,
                    child: Container(
                      child: Center(
                        child: Image.asset(
                          'assets/images/mubeen6.png',
                        ),
                      ),
                    ), //Text
                  ),
                ),
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.only(top: 40),
            child: Text(
              'How was the service ?',
              style: TextStyle(
                fontFamily: 'Inter',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w700,
                fontSize: 16.0,
                color: Color(0xff1C1C1C),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFF7E6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                          ),
                          child: Image.asset(
                            'assets/images/mubeen16.png',
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70, left: 15),
                      child: Text(
                        'Bad',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFF7E6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/mubeen15.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70, left: 15),
                      child: Text(
                        'Normal',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 64.0,
                          height: 64.0,
                          decoration: const BoxDecoration(
                            color: Color(0xffFFF7E6),
                            borderRadius:
                                BorderRadius.all(Radius.circular(6.0)),
                          ),
                          child: Center(
                            child: Image.asset(
                              'assets/images/17.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70, left: 15),
                      child: Text(
                        'Happy',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 7,
                ),
                Stack(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Container(
                            width: 64.0,
                            height: 64.0,
                            decoration: const BoxDecoration(
                              color: Color(0xffFFF7E6),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(6.0)),
                            ),
                            child: Center(
                              child: Image.asset(
                                'assets/images/mubeen14.png',
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 70, left: 5),
                      child: Text(
                        'Super Happy',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w400,
                          fontSize: 12.0,
                          letterSpacing: -0.4,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: CustomButton(
              onTap: () {},
              text: 'Rate',
            ),
          ),
        ]),
      ),
    );
  }
}
