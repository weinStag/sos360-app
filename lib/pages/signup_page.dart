import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_button.dart';
import 'package:sos360_app/components/my_text_field.dart';
import 'package:sos360_app/pages/home_page.dart';

class SignupPage extends StatelessWidget {
  SignupPage({super.key});

  final usernameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final secondPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Image.asset("assets/logo.png", height: 200),
            const SizedBox(height: 20),
            Column(
              children: [
                MyTextField(
                  controller: usernameController,
                  hintText: "Pessoa da Silva",
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: emailController,
                  hintText: "pessoa@dasilva.com",
                  obscureText: false,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: passwordController,
                  hintText: "Senha",
                  obscureText: true,
                ),
                const SizedBox(height: 20),
                MyTextField(
                  controller: secondPasswordController,
                  hintText: "Confirmação de senha",
                  obscureText: true,
                ),
                const SizedBox(height: 60),
                MyButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  icon: const Icon(Icons.person_add),
                  color: Colors.red.shade700,
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}
