import 'package:flutter/material.dart';
import 'package:sos360_app/components/my_button.dart';
import 'package:sos360_app/components/my_text_field.dart';

class RecoverPasswordPage extends StatelessWidget {
  final emailController = TextEditingController();

  RecoverPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset("assets/logo.png"),
          Column(
            children: [
              const Text(
                "Esqueceu sua senha?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                "Digite seu e-mail e enviaremos um link para você redefinir sua senha.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey.shade600,
                ),
              ),
              const SizedBox(height: 20),
              MyTextField(
                controller: emailController,
                hintText: "E-mail",
                obscureText: false,
              ),
            ],
          ),
          const SizedBox(height: 30),
          MyButton(
            color: Colors.red.shade800,
            icon: const Icon(Icons.send),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
