import 'package:flutter/material.dart';
import 'package:gdg_aden_hackathon/screens/app_starter_intro_screen/widgets/on_boarding_splash.dart';
import 'package:gdg_aden_hackathon/screens/home_screen.dart';

class AppStarterIntroScreen extends StatefulWidget {
  const AppStarterIntroScreen({super.key});

  @override
  State<AppStarterIntroScreen> createState() => _AppStarterIntroScreenState();
}

class _AppStarterIntroScreenState extends State<AppStarterIntroScreen> {
  final PageController pageController = PageController();
  List<Widget> _screens = [];
  int currentIndex = 0;
  bool visibility = false;

  bool isAnimating = false;

  void nextButton() {
    if (!isAnimating && currentIndex < _screens.length - 1) {
      if (currentIndex < _screens.length - 1) {
        setState(() {
          isAnimating = true;
          currentIndex++;
          pageController
              .animateToPage(
            currentIndex,
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
          )
              .then((value) {
            setState(() {
              isAnimating = false;
            });
          });
          visibility = true;
        });
      }
    } else if (!isAnimating) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
        return const HomeScreen();
      }));
    }
  }

  void backButton() {
    if (currentIndex > 0) {
      setState(() {
        currentIndex--;
        pageController.animateToPage(
          currentIndex,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
        );
        visibility = currentIndex != 0;
      });
    }
  }

  @override
  void initState() {
    setState(() {
      _screens = [
        const OnBoardingSplash(
            title: "كن اول من يعرف بوقت وصول المياه المنزلية",
            subTitle: "كن اول من يعرف بوقت وصول المياه المنزلية",
            imagePath: "assets/images/whater.png"),
        const OnBoardingSplash(
            title:
                "استفد من الشريط الاخباري الذكي الذي يقدم لك الاخبار المحليه اولا ب اول",
            subTitle:
                "استفد من الشريط الاخباري الذكي الذي يقدم لك الاخبار المحليه اولا ب اول",
            imagePath: "assets/images/robot.png"),
        const OnBoardingSplash(
            title: "تابع استخدامك الشهري للمياة. وفعل تنبيهات قبل انتهاء الماء",
            subTitle:
                "تابع استخدامك الشهري للمياة. وفعل تنبيهات قبل انتهاء الماء",
            imagePath: "assets/images/whater_box.png"),
        const OnBoardingSplash(
            title: "اعرف اكثر اوقات الكهرباء انقطاعا وكن مستعدا",
            subTitle: "اعرف اكثر اوقات الكهرباء انقطاعا وكن مستعدا",
            imagePath: "assets/images/lamp_on.png"),
      ];
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              children: [
                buildSplashScreens(),
              ],
            ),
            buildNextAndBackButton(),
          ],
        ),
      ),
    );
  }

  // Splash Screens
  Widget buildSplashScreens() {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        itemCount: _screens.length,
        reverse: true,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (index) {
          currentIndex = index;
        },
        itemBuilder: (_, index) {
          return _screens[index];
        },
        scrollBehavior: const MaterialScrollBehavior(),
      ),
    );
  }

  // Next & Back Button
  Widget buildNextAndBackButton() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        margin: const EdgeInsets.only(bottom: 50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            OutlinedButton(
              onPressed: () => nextButton(),
              style: OutlinedButton.styleFrom(
                backgroundColor: const Color(0xFF73D26B),
                foregroundColor: Colors.white,
                fixedSize: Size(MediaQuery.of(context).size.width / 3.5,
                    MediaQuery.of(context).size.width / 10),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                ),
              ),
              child: Text(
                currentIndex < _screens.length - 1 ? "التالي" : "ابدأ",
                style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(width: 10),
            Visibility(
              visible: visibility,
              child: OutlinedButton(
                onPressed: () => backButton(),
                style: OutlinedButton.styleFrom(
                  padding:
                      EdgeInsets.all(MediaQuery.of(context).size.width / 25),
                  foregroundColor: Colors.black87,
                  side: const BorderSide(color: Color(0xFFF5F4F8)),
                  backgroundColor: const Color(0xFFF5F4F8),
                  shape: const CircleBorder(),
                ),
                child: Icon(Icons.arrow_forward_rounded,
                    size: MediaQuery.of(context).size.width / 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
