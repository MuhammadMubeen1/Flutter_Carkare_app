import 'package:flutter/material.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_textfield.dart';

import '../detailsscreen/detail_screen.dart';

class ConfirmLocation extends StatefulWidget {
  const ConfirmLocation({super.key});
  @override
  State<ConfirmLocation> createState() => _ConfirmLocationState();
}

class _ConfirmLocationState extends State<ConfirmLocation> {
  TextEditingController controller = TextEditingController();
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
            '''Confirm Location''',
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
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 30, left: 20, right: 250),
                child: Center(
                  child: Text(
                    ''' Location''',
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
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Center(
                    child: Image.asset('assets/images/map1.jpeg',
                        width: 320, height: 300, fit: BoxFit.fill)),
              )),
              const Padding(
                padding: EdgeInsets.only(top: 20, left: 20, right: 210),
                child: Center(
                  child: Text(
                    '''Enter Location''',
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
                padding: const EdgeInsets.all(18.0),
                child: Center(
                    child: SizedBox(
                  width: 320,
                  child: CustomTextField(
                    controller: controller,
                    hintText: 'Enter Location',
                  ),
                )),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0),
                child: Center(
                    child: CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const DetailsScreen()));
                  },
                  text: 'Confirm Location',
                )),
              )
            ]),
      ),
    );
  }
}
