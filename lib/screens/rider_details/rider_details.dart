import 'package:flutter/material.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({super.key});
  @override
  State<OrderDetails> createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
            padding: EdgeInsets.only(right: 50),
            child: Text(
              '''Rider Details''',
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
      body: Column(children: [
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
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: const [
              Text(
                'Rider Name',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              Text(
                'rider location',
                style: TextStyle(
                    color: Color(0xff757678), fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          height: 40,
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 110, top: 5),
              child: Center(
                child: Container(
                  width: 55.0,
                  height: 55.0,
                  decoration: BoxDecoration(
                    color: const Color(0xffDF3831),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Image.asset(
                    'assets/images/mubeen4.png',
                    height: 20,
                    width: 20,
                  ), //Text ,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 5),
              child: Container(
                width: 55.0,
                height: 55.0,
                decoration: BoxDecoration(
                  color: const Color(0xff0182D9),
                  borderRadius: BorderRadius.circular(25),
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
    );
  }
}
