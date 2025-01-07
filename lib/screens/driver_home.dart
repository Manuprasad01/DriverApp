import 'package:driver_app/screens/invoices.dart';
import 'package:flutter/material.dart';

class DriverHome extends StatelessWidget {
  const DriverHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Image.asset(
              'assets/images/cabzing.png',
              height: 34,
              width: 138,
            ),
          ),
          Spacer(),
          Image.asset(
            "assets/images/profile1.png",
            height: 61,
            width: 61,
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/images/plot.png',
                height: 394,
                width: 382,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 129,
              width: 373,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: const Color.fromRGBO(15, 15, 15, 1),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/bookings.png',
                    height: 92,
                    width: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Bookings',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '123',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'Reserved',
                        style: TextStyle(
                            color: const Color.fromRGBO(
                              86,
                              86,
                              86,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(19, 19, 19, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 129,
              width: 373,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(33),
                color: const Color.fromRGBO(15, 15, 15, 1),
              ),
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset(
                    'assets/icons/bookings.png',
                    height: 92,
                    width: 40,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Invoice',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        '10232.00',
                        style: TextStyle(color: Colors.white, fontSize: 22),
                      ),
                      Text(
                        'Rupees',
                        style: TextStyle(
                            color: const Color.fromRGBO(
                              86,
                              86,
                              86,
                              1,
                            ),
                            fontSize: 14),
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      height: 75,
                      width: 75,
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(19, 19, 19, 1),
                          borderRadius: BorderRadius.circular(20)),
                      child: IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InvoicePage()));
                          },
                          icon: Icon(
                            Icons.arrow_right_alt_sharp,
                            color: Colors.white,
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
