import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:sos360_app/screens/emergency_call/call_service_page.dart';
import 'package:sos360_app/screens/help/help_page.dart';
import 'package:sos360_app/screens/settings_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedBarIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 0)
              ),
            ],
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: GNav(
              backgroundColor: Colors.transparent,
              color: Colors.black45,
              iconSize: 30,
              tabBackgroundColor: Colors.blue.shade300,
              padding: const EdgeInsets.all(10),
              gap: 10,
              selectedIndex: selectedBarIndex,
              onTabChange: (newIndex) {
                setState(() {
                  selectedBarIndex = newIndex;
                });
              }, 
              tabs: const [
                GButton(
                  icon: Icons.settings,
                  text: "Opções",
                ),
                GButton(
                  icon: Icons.phone,
                  text: "Chamar",
                ),
                GButton(
                  icon: Icons.help_outline,
                  text: "Ajuda",
                ),
              ]
            ),
          ),
        ),
      ),        
      body: switch (selectedBarIndex) {
        0 => const SettingsPage(),
        2 => const HelpPage(),
        int() => const CallServicePage(),
      }
    );
  }
}
