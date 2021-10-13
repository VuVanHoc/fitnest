import 'package:fitnest/constants.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 1;

  final List<String> backgroundImages = [
    "assets/images/onboarding1.png",
    "assets/images/onboarding2.png",
    "assets/images/onboarding3.png",
    "assets/images/onboarding4.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(backgroundImages[_currentIndex - 1]),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.only(
                left: 30.0,
                bottom: 40.0,
                right: 30.0,
                top: 10.0,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  renderPageContent(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 500,
                        restartAnimation: false,
                        animateFromLastPercent: true,
                        radius: 60.0,
                        lineWidth: 2.0,
                        percent: _currentIndex * 0.25,
                        center: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: OutlinedButton(
                            onPressed: nextStep,
                            child: Image.asset(
                              "assets/icons/arrow_right_light_2.png",
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(kColorBlueSky),
                              shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        progressColor: kColorBlueSky,
                        backgroundColor: kColorWhite,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget renderPageContent() {
    const List<String> titles = [
      "Track Your Goal",
      "Get Burn",
      "Eat Well",
      "Improve Sleep Quality"
    ];
    const List<String> contents = [
      "Don't worry if you have trouble determining your goals, We can help you determine your goals and track your goals",
      "Let’s keep burning, to archive yours goals, it hurts only temporarily, if you give up now you will be in pain forever",
      "Let's start a healthy lifestyle with us, we can determine your diet every day. healthy eating is fun",
      "Improve the quality of your sleep with us, good quality sleep can bring a good mood in the morning"
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          titles[_currentIndex - 1],
          textAlign: TextAlign.left,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 24,
            color: kColorBlack,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5.0),
          child: Text(
            contents[_currentIndex - 1],
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: kColorGray1,
            ),
          ),
        ),
      ],
    );
  }

  void nextStep() {
    setState(() {
      if (_currentIndex >= 4) {
      } else {
        _currentIndex += 1;
      }
    });
  }
}
