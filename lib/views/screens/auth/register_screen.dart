import 'package:flutter/material.dart';
import 'package:sos360_app/views/widgets/sos_button.dart';
import 'package:sos360_app/views/widgets/sos_input.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.all(30.0),
        children: [
          Image.asset(
            'assets/logo.png',
            width: 150.0,
            height: 150.0,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text("Registre-se",
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
                SosInput(text: "Nome Completo"),
                SosInput(text: "Email"),
                SosInput(text: "Senha"),
                SosInput(text: "Confirmação de Senha"),
                SosInput(text: "CPF"),
              ],
            ),
          ),
          SizedBox(height: 40),
          SosButton(text: "Registre-se"),
        ],
      ),
    );
  }
}
