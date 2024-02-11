import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';
import '../confirmlocation/confirm_location.dart';

class ConfirmDateTime extends StatefulWidget {
  const ConfirmDateTime({super.key});
  @override
  State<ConfirmDateTime> createState() => _ConfirmDateTimeState();
}

class _ConfirmDateTimeState extends State<ConfirmDateTime> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 1,
        toolbarHeight: 80,
        toolbarOpacity: 0.5,
        backgroundColor: const Color(0xFFFFFFFF),
        title: const Center(
          child: Text(
            '''Confirm Date & Time''',
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
          // child: const Icon(
          //   Icons.arrow_back,
          //   color: Color.fromARGB(255, 28, 28, 28),
          //   size: 27,
          // ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 15, right: 60, top: 30),
                child: Center(
                  child: Text(
                    '''When do you want the  service?''',
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
              const Padding(
                padding: EdgeInsets.only(left: 0, right: 220, top: 10),
                child: Center(
                  child: Text(
                    '''Select Date''',
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
              Padding(
                padding: const EdgeInsets.only(top: 10, right: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 60.0,
                      height: 60.0,
                      decoration: BoxDecoration(
                        color: const Color(0xffe1f0fa),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            color: const Color(0xff757678),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          '''Today \n 21''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color(0xff0182d9),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 84,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            color: const Color(0xff757678),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          ''' Tomorrow \n 22''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color(0xff0182d9),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            color: const Color(0xff757678),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          ''' Wed \n 23''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color(0xff0182d9),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Container(
                      height: 60,
                      width: 64,
                      decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(8.0)),
                        border: Border.all(
                            color: const Color(0xff757678),
                            width: 1.0,
                            style: BorderStyle.solid),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          ''' Thu \n 24''',
                          overflow: TextOverflow.visible,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w700,
                            fontSize: 14.0,
                            color: Color(0xff0182d9),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 0, right: 180, top: 12),
                child: Center(
                  child: Text(
                    '''Select Time Slot''',
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
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "8:00 - 8:30am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "8:30 - 9:00am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "9:00 - 9:30am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "9:30 - 10:00am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "10:00 - 10:30am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "10:30 - 11:00am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "11:00 - 11:30am",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            Container(
                              width: 152.0,
                              height: 48.0,
                              decoration: BoxDecoration(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(8.0)),
                                border: Border.all(
                                    color: const Color(0xff757678),
                                    width: 1.0,
                                    style: BorderStyle.solid),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Center(
                                  child: Text(
                                    "11:30 - 12:00pm",
                                    style: TextStyle(
                                      fontFamily: 'Inter',
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 14.0,
                                      color: Color(0xff757678),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 25, left: 0),
                child: Center(
                  child: CustomButton(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (c) => const ConfirmLocation()));
                    },
                    text: 'Select',
                  ),
                ),
              ),
            ]),
      ),
    );
  }
}
