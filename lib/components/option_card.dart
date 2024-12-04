import 'package:flutter/material.dart';

class OptionCard extends StatelessWidget {
  final String option;
  final color;

  const OptionCard({
    super.key,
    required this.option,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return 
              Container(
                child: Card(
                  elevation: 6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 40.0,
                      vertical: 20.0
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.circle,
                          size: 110,
                          color: color,
                        ),
                        Text(
                          option,
                          style: TextStyle(
                            fontSize: 30.0
                          ),
                        ),
                      ],
                    ),
                  ),
                  ),
                    );
 }
}
