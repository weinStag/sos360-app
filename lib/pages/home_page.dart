import 'package:flutter/material.dart';
import 'package:sos360_app/components/option_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  var selectedBarItemIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red.shade700,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedBarItemIndex,
        onTap: (newIndex) {
          setState(() {
            selectedBarItemIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home, size: 30), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings, size: 30), label: "Config."),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Icons.account_circle,
                              size: 45,
                              color: Colors.white,
                            ),
                            Text(
                              " João Pedro",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.red.shade900,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          padding: EdgeInsets.all(5.0),
                          child: Icon(
                            Icons.notifications,
                            size: 40,
                            color: Colors.white,
                          )
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                padding: const EdgeInsets.all(30.0),
                child: Center(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Novo chamado: ",
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 5.0,
                              vertical: 5.0
                            ),
                            decoration: BoxDecoration(
                              color: Colors.grey.shade200,
                              borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            ),
                            child: Icon(
                              Icons.info_outline,
                              size: 40,
                              ),
                            ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      // ListView(
                      //   children: [
                          OptionCard(
                            option: "Polícia",
                            color: Colors.blue.shade900,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          OptionCard(
                            option: "Bombeiros",
                            color: Colors.red,
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          OptionCard(
                            option: "SAMU",
                            color: Colors.white,
                          ),
                        // ],
                      // )
                    ],
                  ),
                ),
              )
            ),
          ],
        )
      ),
    );
  }
}
