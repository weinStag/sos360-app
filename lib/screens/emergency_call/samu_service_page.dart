import 'package:flutter/material.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sos360_app/components/option_card.dart';

class SamuServicePage extends StatelessWidget {
  const SamuServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Image.asset(
                      "assets/ambulance.png",
                      height: 100,
                    ),
                    LinearProgressBar(
                      maxSteps: 3,
                      currentStep: 1,
                      progressColor: Colors.red.shade600,
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
                       SizedBox(height: 30,),
                      OptionCard(
                        icon: "assets/ambulance.png",
                        option: "Desmaio",
                      ),
                      OptionCard(
                        icon: "assets/ambulance.png",
                        option: "Engasgamento",
                      ),
                      OptionCard(
                        icon: "assets/ambulance.png",
                        option: "Parto",
                      ),
                      OptionCard(
                        icon: "assets/ambulance.png",
                        option: "Convulsão",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ),
      ),
    );
  }
}