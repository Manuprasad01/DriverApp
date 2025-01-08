// import 'package:driver_app/screens/Bottom_Navigation.dart';
// import 'package:driver_app/screens/driver_home.dart';
import 'package:driver_app/screens/driver_home.dart';
// import 'package:driver_app/screens/sample_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
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
      body: Form(
        key: _formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            const Text(
              'Login',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
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
                child: TextFormField(
                    style: TextStyle(color: Colors.white),
                    controller: emailController,
                    decoration: const InputDecoration(
                      hintText: 'Username',
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "please enter your email";
                      } else if (value == 'a') {
                        return 'Invalid character';
                      }
                      return null;
                    }),
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
                child: TextFormField(
                  style: TextStyle(color: Colors.white),
                  controller: passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: 'Password',
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter the password";
                    } else if (value.length < 8 || value.length > 16) {
                      return 'password length is too short or large';
                    }
                    return null;
                  },
                ),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Forgotten Password?'),
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  if (emailController.text == 'Manu@example.com' &&
                      passwordController.text == '12345678') {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => DriverHome()));
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('Invalid username or password')));
                  }
                }
              },
              child:
                  const Text('Sign in', style: TextStyle(color: Colors.white)),
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
      ),
    );
  }
}
