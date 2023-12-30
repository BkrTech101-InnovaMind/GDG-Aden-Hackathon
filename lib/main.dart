import 'package:flutter/material.dart';
import 'package:gdg_aden_hackathon/screens/app_starter_intro_screen/widgets/on_boarding_screen.dart';

void main() {
  runApp(const GDGAdenHackathon());
}

class GDGAdenHackathon extends StatelessWidget {
  const GDGAdenHackathon({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "مشاكل عدن",
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
