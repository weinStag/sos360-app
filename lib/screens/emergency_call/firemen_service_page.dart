import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sos360_app/components/option_card.dart';

class FiremenServicePage extends StatelessWidget {
  const FiremenServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/firemen.png",
                    height: 100,
                  ),
                  LinearProgressBar(
                    maxSteps: 3,
                    currentStep: 1,
                    progressColor: Colors.white,
                    backgroundColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    minHeight: 7,
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 5,
                      offset: Offset(0, -3),
                    ),
                  ],
                ),
                child: ListView(
                  children: const [
                    SizedBox(
                      height: 30,
                    ),
                    OptionCard(
                      icon: "assets/firemen.png",
                      option: "Incêndio",
                    ),
                    OptionCard(
                      icon: "assets/firemen.png",
                      option: "Acidente",
                    ),
                    OptionCard(
                      icon: "assets/firemen.png",
                      option: "Produto Químico",
                    ),
                    OptionCard(
                      icon: "assets/firemen.png",
                      option: "Difícil acesso",
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
