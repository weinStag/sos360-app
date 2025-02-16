import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:sos360_app/views/screens/help/help_screen.dart';
import 'package:sos360_app/views/screens/history_screen.dart';
import 'package:sos360_app/views/screens/new_call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var page = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        buttonBackgroundColor: Colors.blue.shade700,
        backgroundColor: Colors.white,
        color: Colors.red[600]!,
        index: 1,
        height: 60,
        animationCurve: Curves.easeOutQuad,
        onTap: (index) {
            setState(() {
              page = index;
            });
          },
        items: [
          CurvedNavigationBarItem(
              child: Icon(
                Icons.history,
                size: 30,
                color: Colors.white,
              ),
              label: "Histórico",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.call,
                size: 30,
                color: Colors.white,
              ),
              label: "Chamar",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
          CurvedNavigationBarItem(
              child: Icon(
                Icons.help,
                size: 30,
                color: Colors.white,
              ),
              label: "Ajuda",
              labelStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 15)),
        ],
      ),
      body: switch (page) {
        0 => HistoryScreen(),
        2 => HelpScreen(),
        _ => NewCallScreen(),
      });
  }
}
