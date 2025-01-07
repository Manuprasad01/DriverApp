import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            Container(
              width: 388,
              height: 352,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(33),
                  color: const Color.fromRGBO(15, 15, 15, 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Image.asset(
                          'assets/images/profile2.png',
                          height: 100,
                          width: 100,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        children: [
                          Text(
                            'David Arnold',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            'david012@cabzig',
                            style: TextStyle(
                                color: const Color.fromRGBO(181, 205, 254, 1)),
                          )
                        ],
                      ),
                      Spacer(),
                      Padding(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.edit,
                              color: Colors.white,
                            )),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 107,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            color: Colors.black),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  '123',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
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
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 107,
                        width: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(33),
                            color: Colors.black),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                Text(
                                  '123',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 22),
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
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 67,
                    width: 352,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(174),
                        color: Colors.black),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.logout_rounded,
                          color: Colors.red,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'logout',
                              style: TextStyle(color: Colors.red, fontSize: 15),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/help.png',
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'Help',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/faq.png',
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'FAQ',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/invite.png',
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'Invite Friends',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/terms.png',
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'Term of Services',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))
                  ],
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/privacy.png',
                      height: 24,
                      width: 24,
                    ),
                    Text(
                      'Privacy policy',
                      style: TextStyle(fontSize: 15),
                    ),
                    IconButton(
                        onPressed: () {}, icon: Icon(Icons.navigate_next))
                  ],
                ),
              ],
            )
          ],
        ));
  }
}
