import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home/homescreen.dart';
import 'package:whatsapp_ui/Screens/OnBording/onboarding.dart';
import 'package:whatsapp_ui/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_ui/Screens/Settings/settingsscreen.dart';
import 'package:whatsapp_ui/Screens/Splash/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp Colon',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Color(0XFF00A884)),
            useMaterial3: false,
            fontFamily: 'Regular'),
        home: Splashscreen());
  }
}
