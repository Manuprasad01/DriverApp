import 'package:driver_app/login/login_page.dart';
// import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'login_provider.dart';

void main() async {
  // WidgetsFlutterBinding
  //     .ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const DriverApp());
}

class DriverApp extends StatelessWidget {
  const DriverApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => LoginProvider()..fetchdetails(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: LoginPage(),
      ),
    );
  }
}
