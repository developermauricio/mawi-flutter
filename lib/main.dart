import 'package:flutter/material.dart';
import 'package:mawi/src/screens/auth/login_screen.dart';
import 'package:mawi/src/utils/colors.dart';
import 'package:mawi/src/screens/welcome_screen.dart';
import 'package:mawi/src/utils/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaWi',
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomeScreen(),
        'login': (context) => const LoginScreen()
      },
      darkTheme: ThemeClass.darkTheme,
      theme: ThemeClass.lightTheme,
      themeMode: ThemeMode.system,
    );
  }
}
