import 'package:flutter/material.dart';
import 'package:gdg_aden_hackathon/providers/theme_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      body: Column(
        children: [
          const Text(
            "أهلا وسهلا",
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
          ElevatedButton(onPressed: () {}, child: const Text("Click Me !!")),
          SwitchListTile(
            title:
                Text(themeProvider.getIsDarkTheme ? "Dark Mode" : "Light Mode"),
            value: themeProvider.getIsDarkTheme,
            onChanged: (value) {
              themeProvider.setDarkTheme(value);
              print("Theme State : ${themeProvider.getIsDarkTheme}");
            },
          )
        ],
      ),
    );
  }
}
