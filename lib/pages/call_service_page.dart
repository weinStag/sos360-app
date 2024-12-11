import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:sos360_app/components/option_card.dart';
import 'package:sos360_app/pages/notifications_page.dart';
import 'package:sos360_app/pages/service_pages/firemen_service_page.dart';
import 'package:sos360_app/pages/service_pages/police_service_page.dart';
import 'package:sos360_app/pages/service_pages/samu_service_page.dart';

class CallServicePage extends StatelessWidget {
  const CallServicePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.red.shade600,
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "João Pedro",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red.shade800,
                              borderRadius: BorderRadius.circular(10)),
                          child: IconButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const NotificationsPage()));
                              },
                              icon: const Icon(
                                Icons.notifications,
                                color: Colors.white,
                                size: 40,
                              )),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(40),
                            topRight: Radius.circular(40)),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 7,
                            spreadRadius: 1,
                            offset: const Offset(0, -5),
                          )
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Novo chamado: ",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PoliceServicePage()));
                              },
                              child: OptionCard(
                                  option: "Polícia", icon: "assets/police.png"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            FiremenServicePage()));
                              },
                              child: OptionCard(
                                  option: "Bombeiros",
                                  icon: "assets/firemen.png"),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SamuServicePage()));
                              },
                              child: const OptionCard(
                                  option: "SAMU", icon: "assets/ambulance.png"),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text("SOS360 - 2024"),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
