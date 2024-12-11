import 'package:flutter/material.dart';

class CallInfo extends StatelessWidget {
  const CallInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: IconButton(
                    icon: const Icon(
                      Icons.arrow_back,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              Text(
                "Informações da Chamada",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.black.withOpacity(0.9)),
              ),
            ],
          ),
          Image.asset(
            'assets/police.png',
            width: 50,
            height: 50,
          ),
          Text("data: 12/12/2024"),
          Text("hora: 12:00"),
          SizedBox(height: 30,),
          Text(
            "Descrição do chamado:",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
            child: Text(
              "Chamado para atender uma ocorrência de roubo",
              style: TextStyle(fontSize: 20),
            ),
          ),
        ],
      )),
    );
  }
}
