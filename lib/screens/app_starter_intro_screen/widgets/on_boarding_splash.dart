import 'package:flutter/material.dart';

class OnBoardingSplash extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imagePath;
  const OnBoardingSplash({
    required this.title,
    required this.subTitle,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildHeroSection(context),
        _buildContentSection(
          context,
        )
      ],
    );
  }

  Widget _buildHeroSection(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/splash_bg.png",
          height: MediaQuery.of(context).size.height / 2.9,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
        Positioned(
            bottom: MediaQuery.of(context).size.height / 15,
            right: MediaQuery.of(context).size.width / 3,
            child: Column(
              children: [
                Image.asset(
                  "assets/images/hand_check.png",
                  scale: MediaQuery.of(context).size.width / 250,
                ),
                Text(
                  "مرحباً",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: MediaQuery.of(context).size.width / 5,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            )),
      ],
    );
  }

  Widget _buildContentSection(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        Image.asset(
          imagePath,
          scale: MediaQuery.of(context).size.width / 150,
          height: MediaQuery.of(context).size.height / 4,
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 20,
        ),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width / 15,
          ),
          child: Text(
            subTitle,
            style: TextStyle(fontSize: MediaQuery.of(context).size.width / 20),
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
