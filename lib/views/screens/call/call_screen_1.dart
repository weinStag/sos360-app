import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:linear_progress_bar/linear_progress_bar.dart';
import 'package:sos360_app/constants/emergency_types.dart';
import 'package:sos360_app/views/screens/call/call_screen_2.dart';
import 'package:sos360_app/views/widgets/sos_card.dart';

class CallScreen1 extends StatefulWidget {
  final emergencyId;

  EmergencyType get emergencyType => EmergencyType.fromId(emergencyId);

  const CallScreen1({super.key, required this.emergencyId});

  @override
  State<CallScreen1> createState() => _CallScreen1State();
}

class _CallScreen1State extends State<CallScreen1> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: widget.emergencyType.color,
          width: double.infinity,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      widget.emergencyType.icon,
                      height: 100,
                    ),
                    SizedBox(width: 25),
                    Text(
                      widget.emergencyType.name,
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: LinearProgressBar(
                  maxSteps: 3,
                  currentStep: 1,
                  progressColor: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ListView.builder(
                    itemCount: widget.emergencyType.services.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return CallScreen2(
                              emergencyType: widget.emergencyType,
                              service: widget.emergencyType.services[index],
                            );
                          }));
                        },
                        child: SosCard(
                          imagePath: widget.emergencyType.icon,
                          text: widget.emergencyType.services[index],
                        ),
                      );
                    },
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
