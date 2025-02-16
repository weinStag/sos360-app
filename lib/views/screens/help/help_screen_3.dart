import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HelpScreen3 extends StatelessWidget {
  const HelpScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Lottie.network(
                "https://lottie.host/6531e88f-92c1-40f1-bdb5-15aa730689d6/ZjYMHfHRu1.json",
                width: 300,
              ),
              const SizedBox(height: 50),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Pronto! O serviço estará a caminho do local da emergência.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}