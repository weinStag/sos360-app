import 'package:flutter/material.dart';
import 'package:sos360_app/views/widgets/sos_button.dart';
import 'package:sos360_app/views/widgets/sos_input.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(30.0),
        children: [
          SizedBox(height: 50),
          Image.asset(
            'assets/logo.png',
            width: 150.0,
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Login",
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue.shade900)),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    blurRadius: 20,
                    offset: Offset(0, 10),
                  ),
                ]),
            child: Column(
              children: [
                SosInput(text: "Email"),
                SosInput(text: "Senha"),
              ],
            ),
          ),
          SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Esqueceu a senha?"),
            ],
          ),
          SizedBox(height: 40),
          SosButton(text: "Login"),
          SizedBox(height: 60),
          Row(
            children: [
              Expanded(
                  child: Divider(
                thickness: 0.5,
              )),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Registre-se"),
              ),
              Expanded(
                  child: Divider(
                thickness: 0.5,
              )),
            ],
          ),
        ],
      ),
    );
  }
}
