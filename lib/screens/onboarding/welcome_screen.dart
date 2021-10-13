import 'package:fitnest/constants.dart';
import 'package:fitnest/screens/onboarding/onboarding_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          padding: const EdgeInsets.only(
            left: 30.0,
            bottom: 40.0,
            right: 30.0,
          ),
          decoration: const BoxDecoration(gradient: kBlueLinear),
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Image.asset("assets/logos/lightLogo.png"),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 15.0),
                    child: Text(
                      "Everybody Can Train",
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 18,
                        color: kColorGray1,
                        letterSpacing: 1.2,
                      ),
                    ),
                  )
                ],
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  height: 60.0,
                  child: OutlinedButton(
                    child: const Text(
                      "Get Started",
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 16.0,
                        color: kColorBlueSky,
                      ),
                    ),
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const OnBoardingScreen()))
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(kColorWhite),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(99.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
