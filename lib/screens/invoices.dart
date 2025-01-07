import 'package:driver_app/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: 24,
            )),
        title: Text(
          'Invoices',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          // Container(
          //   decoration: BoxDecoration(
          //       border: Border.all(color: const Color.fromRGBO(28, 51, 71, 1))),
          //   child: Row(
          //     children: [
          //       Container(
          //         child: Row(
          //           children: [
          //             Icon(
          //               Icons.search,
          //               color: Colors.white,
          //             ),
          //           ],
          //         ),
          //       )
          //     ],
          //   ),
          // )
          Row(
            children: [
              Container(
                width: 236,
                height: 50,
                decoration: BoxDecoration(
                    border:
                        Border.all(color: const Color.fromRGBO(8, 19, 30, 1))),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                width: 143,
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color.fromRGBO(27, 43, 48, 1)),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FilterPage()));
                      },
                      icon: Icon(
                        Icons.sort,
                        color: Colors.blue,
                      ),
                    ),
                    Text(
                      'Add Filters',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
          ListTile(
              title: Text('#invoice No', style: TextStyle(color: Colors.white)),
              subtitle:
                  Text('customer name', style: TextStyle(color: Colors.white)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pending',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text('SAR. 10,1000.00', style: TextStyle(color: Colors.white))
                ],
              )),
          ListTile(
              title: Text('#invoice No', style: TextStyle(color: Colors.white)),
              subtitle:
                  Text('customer name', style: TextStyle(color: Colors.white)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pending',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text('SAR. 10,1000.00', style: TextStyle(color: Colors.white))
                ],
              )),
          ListTile(
              title: Text('#invoice No', style: TextStyle(color: Colors.white)),
              subtitle:
                  Text('customer name', style: TextStyle(color: Colors.white)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pending',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text('SAR. 10,1000.00', style: TextStyle(color: Colors.white))
                ],
              )),
          ListTile(
              title: Text('#invoice No', style: TextStyle(color: Colors.white)),
              subtitle:
                  Text('customer name', style: TextStyle(color: Colors.white)),
              trailing: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Pending',
                    style: TextStyle(color: Colors.red),
                  ),
                  Text('SAR. 10,1000.00', style: TextStyle(color: Colors.white))
                ],
              )),
        ],
      ),
    );
  }
}
