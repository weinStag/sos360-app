import 'package:flutter/material.dart';
import 'package:sos360_app/components/option_card.dart';

class HelpPage1 extends StatelessWidget {
  const HelpPage1({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "Bem-vindo ao SOS 360!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "O SOS 360 foi desenvolvido para facilitar o acionamento de serviços de emergência.",
              textAlign: TextAlign.center,
            ),
            OptionCard(option: "SAMU", icon: "assets/ambulance.png"),
            Text(
              "Para acionar um serviço, clique no botão correspondente ao serviço desejado e especifique o tipo da ocorrência.",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
