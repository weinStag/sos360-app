import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sos360_app/views/screens/help/help_screen_1.dart';
import 'package:sos360_app/views/screens/help/help_screen_2.dart';
import 'package:sos360_app/views/screens/help/help_screen_3.dart';

class HelpScreen extends StatefulWidget {
  const HelpScreen({super.key});

  @override
  State<HelpScreen> createState() => _HelpScreenState();
}

class _HelpScreenState extends State<HelpScreen> {
  final PageController _controller = PageController();

  bool _isFirstPage = true;
  bool _isLastPage = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      PageView(
        controller: _controller,
        onPageChanged: (int page) {
          setState(() {
            _isFirstPage = page == 0;
            _isLastPage = page == 2;
          });
        },
        children: [
          HelpScreen1(),
          HelpScreen2(),
          HelpScreen3(),
        ],
      ),
      Container(
          alignment: Alignment(0, 0.80),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (!_isFirstPage)
                GestureDetector(
                    onTap: () => _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut),
                    child: Icon(Icons.arrow_back_ios))
              else
                GestureDetector(
                    onTap: () => _controller.previousPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.transparent,
                    )),
              SmoothPageIndicator(controller: _controller, count: 3, effect: WormEffect(activeDotColor: Colors.blue)),
              if (_isLastPage)
                GestureDetector(
                    onTap: () => Navigator.pushReplacementNamed(context, '/'),
                    child: Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ))
              else
                GestureDetector(
                    onTap: () => _controller.nextPage(
                        duration: Duration(milliseconds: 300),
                        curve: Curves.easeInOut),
                    child: Icon(Icons.arrow_forward_ios)),
            ],
          )),
    ]));
  }
}
