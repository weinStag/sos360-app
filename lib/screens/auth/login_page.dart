import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_button.dart';
import 'package:sos360_app/components/my_text_field.dart';
import 'package:sos360_app/screens/home_page.dart';
import 'package:sos360_app/screens/auth/recover_password_page.dart';
import 'package:sos360_app/screens/auth/signup_page.dart';

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
          child: ListView(
            children: [
              Image.asset(
                "assets/logo.png",
                height: 200,
              ),
              SizedBox(height: 40),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  MyTextField(
                    controller: usernameController,
                    hintText: "Email",
                    obscureText: false,
                  ),
                  const SizedBox(height: 20),
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
                                ));
                          },
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 60),
              MyButton(
                  color: Colors.red.shade800,
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  icon: const Icon(Icons.login)),
              const SizedBox(height: 80),
              Row(
                children: [
                  const Expanded(child: Divider(thickness: 0.5)),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(
                        color: Colors.grey,
                        width: 0.5,
                      ),
                    ),
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignupPage()));
                      },
                      child: const Row(
                        children: [
                          Text("ou cadastre-se "),
                          Icon(Icons.person_add),
                        ],
                      ),
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
