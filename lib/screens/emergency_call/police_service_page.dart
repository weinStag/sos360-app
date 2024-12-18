import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sos360_app/components/option_card.dart';
import 'package:sos360_app/screens/emergency_call/call_confirmation_page.dart';

class PoliceServicePage extends StatelessWidget {
  const PoliceServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade600,
      body: SafeArea(
        child: Center(
            child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Image.asset(
                    "assets/emergencies/police.png",
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
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.7),
                      blurRadius: 5,
                      offset: const Offset(0, -3),
                    ),
                  ],
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    GestureDetector(
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CallConfirmationPage())),
                      },
                      child: const OptionCard(
                        icon: "assets/emergencies/police.png",
                        option: "Assalto",
                      ),
                    ),
                    const OptionCard(
                      icon: "assets/emergencies/police.png",
                      option: "Furto",
                    ),
                    const OptionCard(
                      icon: "assets/emergencies/police.png",
                      option: "Roubo",
                    ),
                    const OptionCard(
                      icon: "assets/emergencies/police.png",
                      option: "Sequestro",
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
