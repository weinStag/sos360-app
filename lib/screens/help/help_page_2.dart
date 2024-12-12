import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HelpPage2 extends StatelessWidget {
  const HelpPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                  "Certifique-se de conferir os seus dados pessoais e os dados do chamado antes de finalizar."),
              const SizedBox(height: 50),
              Lottie.network(
                  "https://lottie.host/eadc6cc7-c7be-4edc-aa51-ff9cbe848314/VFFzb5j8aR.json"),
              const SizedBox(height: 50),
              const Text(
                  "São essas informações que serão usadas para encontrar você no momento do atendimento."),
            ],
          ),
        ),
      ),
    );
  }
}
