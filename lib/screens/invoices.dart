import 'package:driver_app/screens/filter_screen.dart';
import 'package:flutter/material.dart';

class InvoicePage extends StatelessWidget {
  const InvoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch screen width and height for responsiveness
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 24,
          ),
        ),
        title: const Text(
          'Invoices',
          style: TextStyle(color: Colors.white, fontSize: 16),
        ),
      ),
      body: Column(
        children: [
          Row(
            children: [
              // Responsive width for the search container
              Container(
                width: screenWidth * 0.6, // 60% of the screen width
                height: screenHeight * 0.07, // 7% of the screen height
                decoration: BoxDecoration(
                  border: Border.all(color: const Color.fromRGBO(8, 19, 30, 1)),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.03, // 3% of the screen width
              ),
              // Responsive width for the "Add Filters" container
              Container(
                width: screenWidth * 0.35, // 35% of the screen width
                height: screenHeight * 0.07, // 7% of the screen height
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: const Color.fromRGBO(27, 43, 48, 1),
                ),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FilterPage()),
                        );
                      },
                      icon: const Icon(
                        Icons.sort,
                        color: Colors.blue,
                      ),
                    ),
                    const Text(
                      'Add Filters',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          // List tiles for invoices
          Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) {
                  return const ListTile(
                    title: Text('#invoice No',
                        style: TextStyle(color: Colors.white)),
                    subtitle: Text('customer name',
                        style: TextStyle(color: Colors.white)),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Pending',
                          style: TextStyle(color: Colors.red),
                        ),
                        Text('SAR. 10,1000.00',
                            style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) => const Divider(
                      height: 0.2,
                      color: Colors.blue,
                    ),
                itemCount: 4),
          )

          // Additional list tiles can be added here
        ],
      ),
    );
  }
}



// import 'package:flutter/material.dart';

// class InvoicePage extends StatelessWidget {
//   const InvoicePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     // Sample data for the invoices
//     final List<Map<String, dynamic>> invoices = [
//       {
//         'invoiceNumber': '#001',
//         'customerName': 'John Doe',
//         'status': 'Pending',
//         'amount': 'SAR 1,000.00',
//         'statusColor': Colors.red,
//       },
//       {
//         'invoiceNumber': '#002',
//         'customerName': 'Jane Smith',
//         'status': 'Paid',
//         'amount': 'SAR 2,500.00',
//         'statusColor': Colors.green,
//       },
//       {
//         'invoiceNumber': '#003',
//         'customerName': 'Alice Johnson',
//         'status': 'Overdue',
//         'amount': 'SAR 750.00',
//         'statusColor': Colors.orange,
//       },
//       {
//         'invoiceNumber': '#004',
//         'customerName': 'Bob Brown',
//         'status': 'Pending',
//         'amount': 'SAR 3,000.00',
//         'statusColor': Colors.red,
//       },
//     ];

//     return Scaffold(
//       backgroundColor: Colors.black,
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         leading: IconButton(
//           onPressed: () {
//             Navigator.pop(context);
//           },
//           icon: const Icon(
//             Icons.arrow_back,
//             size: 24,
//           ),
//         ),
//         title: const Text(
//           'Invoices',
//           style: TextStyle(color: Colors.white, fontSize: 16),
//         ),
//       ),
//       body: ListView.separated(
//         itemCount: invoices.length,
//         separatorBuilder: (context, index) => const Divider(
//           color: Colors.grey,
//           thickness: 1,
//           height: 0,
//         ),
//         itemBuilder: (context, index) {
//           final invoice = invoices[index];
//           return ListTile(
//             title: Text(
//               invoice['invoiceNumber'],
//               style: const TextStyle(color: Colors.white),
//             ),
//             subtitle: Text(
//               invoice['customerName'],
//               style: const TextStyle(color: Colors.white),
//             ),
//             trailing: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Text(
//                   invoice['status'],
//                   style: TextStyle(color: invoice['statusColor']),
//                 ),
//                 Text(
//                   invoice['amount'],
//                   style: const TextStyle(color: Colors.white),
//                 ),
//               ],
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

