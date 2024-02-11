import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});
  @override
  State<ChatScreen> createState() => _ChatScreenState();
}
class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFffffff),
      appBar: AppBar(
        elevation: 0.5,
        toolbarHeight: 100,
        toolbarOpacity: 0.5,
        backgroundColor: const Color(0xFFFFFFFF),
        title: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(
                      right: 10,
                    ),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Color(0xffC4C4C4),
                    ),
                  ),
                  Stack(
                    children: const [
                      Text(
                        '''Nome do Meu Contato''',
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
                      Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text(
                          'Online',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w400,
                            fontSize: 14.0,
                            color: Color(0xff0182D9),
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
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
            size: 27,
          ),
        ),
        actions: [
          Column(
            children: const [
              Center(
                child: Text(''),
              ),
            ],
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 267.0,
                  height: 87.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(20),
                        bottomRight: Radius.circular(12),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Stack(
                    children: const [
                      Center(
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.Lorem ipsum dolor sit amet, consec.',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              color: Color(0xff000000),
      
                              fontSize: 14.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 68, left: 225),
                        child: Text('00:00'),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff0182D9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xFfFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff0182D9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xFfFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff0182D9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xFfFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffC4C4C4),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6),
                        topRight: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(25)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                            color:Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 267.0,
                  height: 50.0,
                  decoration: const BoxDecoration(
                    color: Color(0xff0182D9),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(6),
                        bottomRight: Radius.circular(25),
                        bottomLeft: Radius.circular(20)),
                  ),
                  child: Stack(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const Center(
                        child: Padding(
                          padding: EdgeInsets.only(right: 30),
                          child: Text(
                            'Lorem ipsum dolor sit amet, \n consec...',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.w400,
                              fontSize: 14.0,
                              color: Color(0xFfFFFFFF),
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(top: 30, left: 200, right: 10),
                        child: Text(
                          '00:00 ',
                          style: TextStyle(color: Color(0xffE2E2E2)),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 240, top: 33),
                        child: Image.asset(
                          'assets/images/mubeen11.png',
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 320.0,
                  height: 46.0,
                  decoration: const BoxDecoration(
                    color: Color(0xffEBEBEB),
                    borderRadius: BorderRadius.all(Radius.circular(18.0)),
                  ),
                  child: Stack(children: [
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 210),
                        child: Image.asset(
                          'assets/images/mubeen13.png',
                        ),
                      ),
                    ),
                    const Center(child: Text('Digit aqui sua mensage...'))
                  ]),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          )
        ]),
      ),
    );
  }
}
