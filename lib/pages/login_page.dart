import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_button.dart';
import 'package:sos360_app/components/my_text_field.dart';
import 'package:sos360_app/pages/home_page.dart';
import 'package:sos360_app/pages/recover_password_page.dart';
import 'package:sos360_app/pages/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                const SizedBox(height: 10),
                MyTextField(
                  controller: passwordController,
                  hintText: "Senha",
                  obscureText: true,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                        child: Text(
                          "Esqueci minha senha",
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => RecoverPasswordPage(),
                            )
                          );
                        },
                      ),
                    ],
                  ),
                )
              ],
            ),
            MyButton(
                color: Colors.red.shade800,                
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                icon: const Icon(Icons.login)
              ),
            Row(
              children: [
                const Expanded(child: Divider(thickness: 0.5)),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SignupPage())
                    );
                  },
                  child: const Row(
                    children: [
                      Icon(Icons.person_add),
                      Text(" ou cadastre-se"),
                    ],
                  ),
                ),
                const Expanded(child: Divider(thickness: 0.5)),
              ],
            )
          ],
        ),
      ),
      ),
    );
  }
}
