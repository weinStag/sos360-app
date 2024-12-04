import 'package:flutter/material.dart';
import 'package:sos360_app/pages/login_page.dart';
import 'package:sos360_app/pages/signup_page.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => SignupPage())
                          );
                        },
                        icon: const Icon(Icons.person_add),
                        iconSize: 60,
                      ),
                      const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginPage())
                          );
                        },
                        icon: const Icon(Icons.login),
                        iconSize: 60,
                      ),
                      const Text(
                        "Log In",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        )
      ),
    );
  }
}
