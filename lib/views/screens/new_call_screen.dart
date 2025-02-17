import 'package:flutter/material.dart';
import 'package:sos360_app/views/screens/call/call_screen_1.dart';
import 'package:sos360_app/views/screens/settings_screen.dart';
import 'package:sos360_app/views/widgets/sos_card.dart';

class NewCallScreen extends StatelessWidget {
  const NewCallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: double.infinity,
          color: Colors.red[600],
          child: Column(
            children: [
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "João",
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen())),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.red.shade900,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Icon(Icons.settings,
                              color: Colors.white, size: 30),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Text("Novo chamado: ",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            )),
                        SizedBox(height: 20),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CallScreen1(emergencyId: 1))),
                          child: SosCard(
                              imagePath: "assets/emergencies/police.png",
                              text: Icon(Icons.arrow_forward, size: 35)),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CallScreen1(emergencyId: 2))),
                          child: SosCard(
                              imagePath: "assets/emergencies/firemen.png",
                              text: Icon(Icons.arrow_forward, size: 35)),
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      CallScreen1(emergencyId: 3))),
                          child: SosCard(
                              imagePath: "assets/emergencies/ambulance.png",
                              text: Icon(Icons.arrow_forward, size: 35)),
                        ),
                      ],
                    )),
              )
            ],
          )),
    );
  }
}
