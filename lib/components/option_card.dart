import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String option;
  final icon;

  const OptionCard({
    super.key,
    required this.option,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        elevation: 6,
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  icon,
                  height: 70,
                ),
              ),
              SizedBox(width: 20),
              Text(
                option,
                style: const TextStyle(
                    fontSize: 30.0, fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
