import 'package:flutter/material.dart';
import 'package:gdg_aden_hackathon/screens/app_starter_intro_screen/app_starter_intro_screen.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            constraints: const BoxConstraints.expand(),
            child: Stack(
              children: [
                Image.asset(
                  "assets/images/boarding.png",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: const Color(0xFF8BC83F),
                            foregroundColor: Colors.white,
                            fixedSize: const Size(278, 63),
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {
                            Navigator.of(context)
                                .pushReplacement(MaterialPageRoute(
                              builder: (context) =>
                                  const AppStarterIntroScreen(),
                            ));
                          },
                          child: const Text(
                            "هيا لنبدأ",
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        const Text(
                          "صنع بحب",
                          style: TextStyle(
                            fontSize: 21,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 3),
                        const Text(
                          "v.1.0.0",
                        ),
                        const SizedBox(height: 10),
                      ],
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
