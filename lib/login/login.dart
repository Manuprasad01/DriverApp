import 'package:driver_app/screens/Bottom_Navigation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../login_provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  String errorMessage = '';

  void _validateAndLogin() {
    final loginProvider = Provider.of<LoginProvider>(context, listen: false);
    final logins = loginProvider.logins;

    final inputUsername = usernameController.text.trim();
    final inputPassword = passwordController.text.trim();

    final isValid = logins.any((login) =>
        login.username == inputUsername && login.password == inputPassword);

    if (isValid) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => BottomNavigation()),
      );
    } else {
      setState(() {
        errorMessage = 'Invalid username or password';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Image.asset(
            'assets/icons/language.png',
            height: 24,
            width: 24,
          ),
          const Text(
            'English',
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          const Text(
            'Login',
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const Text(
            'Login to your Vikin account',
            style: TextStyle(color: Colors.white),
          ),
          const SizedBox(height: 20),
          Center(
            child: Container(
              height: 59.5,
              width: 358,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(8, 19, 30, 1),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(11),
                  topRight: Radius.circular(11),
                ),
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                controller: usernameController,
                decoration: const InputDecoration(
                  hintText: 'Username',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              height: 59.5,
              width: 358,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(8, 19, 30, 1),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(11),
                  bottomRight: Radius.circular(11),
                ),
                border: Border.all(color: Colors.blue),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  hintText: 'Password',
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
              ),
            ),
          ),
          if (errorMessage.isNotEmpty)
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                errorMessage,
                style: const TextStyle(color: Colors.red),
              ),
            ),
          TextButton(
            onPressed: () {},
            child: const Text('Forgotten Password?'),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: TextButton(
              onPressed: _validateAndLogin,
              child:
                  const Text('Sign in', style: TextStyle(color: Colors.white)),
            ),
          ),
          Spacer(),
          Text(
            'dont have an account',
            style: TextStyle(color: Colors.white),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Signup now!',
              style: TextStyle(color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
