import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                _buildTopSection(context),
                _buildCarosileSection(context),
                _buildButtonsSection(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTopSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 40,
        horizontal: MediaQuery.of(context).size.width / 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: MediaQuery.of(context).size.width / 15,
                backgroundImage: const NetworkImage(
                  "https://avatars.githubusercontent.com/u/93738112?v=4",
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width / 20,
              ),
              const Text.rich(
                TextSpan(
                  text: "مرحباً",
                  children: [
                    TextSpan(
                        text: " أبوبكر", style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ],
          ),
          TextButton(
            style: TextButton.styleFrom(
              padding: const EdgeInsets.all(0),
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: Image.asset(
              "assets/images/menu_icon.png",
              scale: MediaQuery.of(context).size.width / 150,
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCarosileSection(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 4,
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 20,
      ),
      child: CarouselSlider(
        carouselController: CarouselController(),
        items: List.generate(
          5,
          (index) => _buildCarosileCard(context),
        ),
        options: CarouselOptions(
          height: MediaQuery.of(context).size.height / 3.5,
        ),
      ),
    );
  }

  Widget _buildCarosileCard(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 40,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.red,
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 15,
                vertical: MediaQuery.of(context).size.width / 35),
            decoration: const BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: const Text(
              "عاجل",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width / 15),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "منذ دقيقتين",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
                Text(
                  "المصدر : وكالة سبأ",
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: MediaQuery.of(context).size.width / 15,
            ),
            child: const Text(
              "الطريق الساحلي مغلق لغرض الصيانه سيكون متاحاً بعد نصف ساعة على الاقل",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButtonsSection(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 20,
        horizontal: MediaQuery.of(context).size.width / 14,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width / 10,
                        horizontal: MediaQuery.of(context).size.width / 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Image.asset(
                  "assets/images/whater_button.png",
                  scale: MediaQuery.of(context).size.width / 200,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width / 10,
                        horizontal: MediaQuery.of(context).size.width / 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Image.asset(
                  "assets/images/electric_button.png",
                  scale: MediaQuery.of(context).size.width / 200,
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width / 10,
                        horizontal: MediaQuery.of(context).size.width / 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Image.asset(
                  "assets/images/gaz_button.png",
                  scale: MediaQuery.of(context).size.width / 200,
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.width / 10,
                        horizontal: MediaQuery.of(context).size.width / 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    )),
                child: Image.asset(
                  "assets/images/fawatir_button.png",
                  scale: MediaQuery.of(context).size.width / 200,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
