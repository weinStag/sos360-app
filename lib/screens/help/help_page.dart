import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sos360_app/screens/help/help_page_1.dart';
import 'package:sos360_app/screens/help/help_page_2.dart';
import 'package:sos360_app/screens/help/help_page_3.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Stack(children: [
        PageView(
          controller: _controller,
          children: const [HelpPage1(), HelpPage2(), HelpPage3()],
        ),
        Container(
          alignment: Alignment.bottomCenter,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            GestureDetector(
              onTap: () {
                _controller.previousPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black45,
              ),
            ),
            SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: const ExpandingDotsEffect(
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey,
                    spacing: 8)),
            GestureDetector(
              onTap: () {
                _controller.nextPage(
                  duration: const Duration(milliseconds: 400),
                  curve: Curves.easeInOut,
                );
              },
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black45,
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
