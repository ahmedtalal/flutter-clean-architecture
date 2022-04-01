import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:recipely_app_v1/src/config/themes/app_theme.dart';
import 'package:recipely_app_v1/src/config/themes/theme_manager.dart';
import 'src/presentation/screens/splash_screen.dart';

Future<void> main(List<String> args) async {
  WidgetsFlutterBinding
      .ensureInitialized(); // is used to interact with firebase engine >>
  await Firebase.initializeApp();
  runApp(RecipelyApp());
}

class RecipelyApp extends StatelessWidget {
  const RecipelyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => ThemeManager(),
          ),
        ],
        child: Consumer<ThemeManager>(
          builder: (context, notifer, child) {
            return MaterialApp(
              theme: notifer.switchTheme(),
              debugShowCheckedModeBanner: false,
              home: SplashScreen(),
            );
          },
        ));
  }
}
