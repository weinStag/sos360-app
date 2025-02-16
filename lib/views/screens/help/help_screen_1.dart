import 'package:flutter/material.dart';

class HelpScreen1 extends StatelessWidget {
  const HelpScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Bem-vindo ao SOS 360!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "O SOS 360 foi desenvolvido para facilitar o acionamento de serviços de emergência, de forma rápida e eficiente.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Para acionar um serviço, clique no botão correspondente ao serviço desejado e especifique o tipo da ocorrência.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ],
        ),
      )
    );
  }
}