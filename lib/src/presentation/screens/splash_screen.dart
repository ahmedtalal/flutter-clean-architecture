import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:recipely_app_v1/src/config/themes/theme_manager.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("my name is ahmed talal"),
              SizedBox(height: 10),
              TextButton(
                style: TextButton.styleFrom(),
                onPressed: () {},
                child: Text(
                  "button 1",
                ),
              ),
              SizedBox(height: 10),
              Consumer<ThemeManager>(
                builder: (context, themeManager, child) {
                  return TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      themeManager.setTheme();
                    },
                    child: Text(
                      "change",
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
