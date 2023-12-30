import 'package:flutter/material.dart';
import 'package:gdg_aden_hackathon/constants/theme_data.dart';
import 'package:gdg_aden_hackathon/providers/theme_provider.dart';
import 'package:gdg_aden_hackathon/screens/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const GDGAdenHackathon());
}

class GDGAdenHackathon extends StatelessWidget {
  const GDGAdenHackathon({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) {
          return ThemeProvider();
        })
      ],
      child: Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
        return MaterialApp(
          title: "مشاكل عدن",
          debugShowCheckedModeBanner: false,
          theme: Styles.themeData(
              isDarkTheme: themeProvider.getIsDarkTheme, context: context),
          home: const HomeScreen(),
        );
      }),
    );
  }
}
