import 'dart:async';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OnBording/onboarding.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Splashscreen extends StatefulWidget {
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Onboarding()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/whatsapp.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
                text: 'WhatsApp', height: 18, fontWeight: FontWeight.bold)
          ],
        ),
      ),
    );
  }
}
