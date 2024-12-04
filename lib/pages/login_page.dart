import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_text_field.dart';
import 'package:sos360_app/pages/home_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/logo.png"),
              Column(
                children: [
                  MyTextField(
                    controller: usernameController,
                    hintText: "john@doe.com",
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
                },
                icon: const Icon(Icons.login),
                iconSize: 60,
              ),
              const SizedBox(height: 15),
            ],
          ),
        )
      ),
    );
  }
}
