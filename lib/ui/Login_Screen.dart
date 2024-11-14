import 'package:flutter/material.dart';
import 'package:lexchanger/Components/UiKits/Auth_Input.dart';
import 'package:lexchanger/Components/UiKits/Auth_Btn.dart';
import 'package:lexchanger/Components/UiKits/Oauth_Btn.dart';
import 'package:lexchanger/ui/Home_Screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String email = "";
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 20,
            ),
            onPressed: () => Navigator.pop),
        title: const Text(
          "Login",
          style: TextStyle(
              fontSize: 18, color: Colors.orange, fontWeight: FontWeight.w500),
        ),
        actions: [
          TextButton(
              onPressed: () => {},
              child: const Text(
                "Register",
                style: TextStyle(
                    color: Colors.orange, fontWeight: FontWeight.w600),
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AuthInput(
              isPassword: true,
              placeholder: "password",
              onChanged: (value) => setState(() {
                password = value;
              }),
            ),
            const SizedBox(
              height: 40,
            ),
            AuthInput(
              placeholder: "email",
              onChanged: (value) => setState(() {
                email = value;
              }),
            ),
            const SizedBox(
              height: 20,
            ),
            AuthBtn(
              text: "Login",
              onClick: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const HomeScreen()),
                );
              },
            ),
            const SizedBox(
              height: 15,
            ),
            Center(
              child: Text(
                "Or sign in",
                style: TextStyle(
                  color: Colors.grey.shade900,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            OauthBtn(onClick: () {}, text: "with Google")
          ],
        ),
      ),
    );
  }
}
