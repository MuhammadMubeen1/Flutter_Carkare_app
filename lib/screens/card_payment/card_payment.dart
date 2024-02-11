import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

class CardPayment extends StatefulWidget {
  const CardPayment({super.key});
  @override
  State<CardPayment> createState() => _CardPaymentState();
}

class _CardPaymentState extends State<CardPayment> {
  TextEditingController controller = TextEditingController();
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
          child: Text(
            '''Card Payment''',
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
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: prefer_const_literals_to_create_immutables
            Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 240, top: 20),
                  child: Text(
                    'Card Details',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 16.0,
                      color: Color(0xff1C1C1C),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 250, top: 20),
                  child: Text(
                    'Card Number',
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
                    padding: const EdgeInsets.only(top: 10, right: 17),
                    child: Container(
                        width: 320.0,
                        height: 50.0,
                        child: Center(
                          child: CustomTextField(
                            controller: controller,
                            hintText: 'Enter Card number',
                          ),
                        ))),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            width: 104.0,
                            height: 50.0,
                            child: Center(
                              child: CustomTextField(
                                controller: controller,
                                hintText: 'CVV',
                              ),
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Container(
                            width: 80.0,
                            height: 50.0,
                            child: Center(
                              child: CustomTextField(
                                controller: controller,
                                hintText: 'MM',
                              ),
                            ))),
                    const SizedBox(
                      width: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 22),
                      child: Container(
                        width: 106.0,
                        height: 50.0,
                        child: Center(
                          child: CustomTextField(
                            controller: controller,
                            hintText: 'YYYY',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 205, top: 20),
                  child: Text(
                    'Card Holder Details',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 210, top: 20),
                  child: Text(
                    'Card Holder Name',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      letterSpacing: -0.4,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                        width: 320.0,
                        height: 50.0,
                        child: Center(
                          child: CustomTextField(
                            controller: controller,
                            hintText: 'Enter Name',
                          ),
                        ))),
                const Padding(
                  padding: EdgeInsets.only(right: 220, top: 20),
                  child: Text(
                    'Contact Number',
                    style: TextStyle(
                      fontFamily: 'Inter',
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      fontSize: 14.0,
                      letterSpacing: -0.4,
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 10, right: 10),
                    child: Container(
                        width: 320.0,
                        height: 50.0,
                        child: Center(
                          child: CustomTextField(
                            controller: controller,
                            hintText: 'Enter Name',
                          ),
                        ))),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: CustomButton(
                    onTap: () {},
                    text: 'Pay',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
