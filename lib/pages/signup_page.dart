import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_text_field.dart';
import 'package:sos360_app/pages/home_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

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
                    hintText: "Pessoa da Silva",
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    hintText: "pessoa@dasilva.com",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Password",
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),
                  MyTextField(
                    controller: passwordController,
                    hintText: "Retype password",
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
                icon: const Icon(Icons.person_add),
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
