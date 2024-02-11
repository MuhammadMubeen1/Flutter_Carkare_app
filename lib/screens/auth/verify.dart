import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:pin_code_fields/pin_code_fields.dart';

import '../../uitilities/constants.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/widgets.dart';

class VerfiyOTP extends StatefulWidget {
  const VerfiyOTP({Key? key}) : super(key: key);

  @override
  State<VerfiyOTP> createState() => _VerfiyOTPState();
}

class _VerfiyOTPState extends State<VerfiyOTP> {
  String codeValue = "";
  final TextEditingController pinOtpController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 100,
                ),
                Image.asset("assets/images/verfiy.png"),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "We sent you a code to verify your phone number",
                    textAlign: TextAlign.center,
                    style: GoogleFonts.inter(
                      textStyle: const TextStyle(
                        color: Color(0xFF1C1C1C),
                        fontSize: 16,
                        letterSpacing: 0.7,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Sent to",
                      style: GoogleFonts.openSans(
                        textStyle: const TextStyle(
                          color: Color(0xFF1C1C1C),
                          fontSize: 14,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "+62 875 875 098",
                      style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                          color: Color(0xFF0182D9),
                          fontSize: 14,
                          letterSpacing: 0.7,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                PinCodeTextField(
                  appContext: context,
                  pastedTextStyle: const TextStyle(
                    color: Color(0xFF0045A1),
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),

                  length: 6,
                  enableActiveFill: true,
                  enablePinAutofill: true,
                  obscuringCharacter: '*',
                  pinTheme: PinTheme(
                    activeColor: Colors.blue,
                    selectedColor: Colors.blue,
                    errorBorderColor: Colors.blue,
                    inactiveColor: Colors.blue,
                    activeFillColor: Colors.white,
                    inactiveFillColor: Colors.white,
                    selectedFillColor: Colors.white,
                    shape: PinCodeFieldShape.box,
                    borderRadius: BorderRadius.circular(5),
                    fieldHeight: 40,
                    fieldWidth: 40,
                    // errorBorderColor: KGreyColor,
                    // disabledColor: KGreyColor,
                    // activeFillColor: KGreyColor.withOpacity(0.5),
                  ),
                  cursorColor: Colors.red,
                  textStyle: TextStyle(fontSize: 15, height: 1.6),
                  // errorAnimationController: errorController,
                  controller: pinOtpController,
                  keyboardType: TextInputType.number,

                  onSubmitted: (value) async {},
                  onCompleted: (v) async {},
                  onChanged: (value) async {
                    /*  try {
                        await FirebaseAuth.instance
                            .signInWithCredential(PhoneAuthProvider.credential(
                                verificationId: verificationCode!,
                                smsCode: value))
                            .then((value) {
                          if (value.user != null) {
                            widget.next.nextPage(
                                duration: Duration(milliseconds: 1),
                                curve: Curves.linear);
                          }
                        });
                      } catch (e) {}*/
                  },
                  beforeTextPaste: (text) {
                    print("Allowing to paste $text");
                    return true;
                  },
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "00:120 Sec",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFFDF3831),
                      fontSize: 14,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Didn't Receive OPT?",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF757678),
                      fontSize: 14,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Request Again",
                  style: GoogleFonts.inter(
                    textStyle: const TextStyle(
                      color: Color(0xFF0045A1),
                      fontSize: 16,
                      letterSpacing: 0.7,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  child: CustomButton(
                    text: 'Verify',
                    primaryColor: buttonPrimaryColor,
                    secodaryColor: buttonSeconadryColor,
                    onTap: () {
                      // Navigator.of(context).pushAndRemoveUntil(
                      //     MaterialPageRoute(
                      //         builder: (context) => const SetLocation()),
                      //     (Route<dynamic> route) => false);
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
