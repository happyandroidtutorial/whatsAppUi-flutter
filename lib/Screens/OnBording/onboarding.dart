import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_ui/Screens/Login/login.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Onboarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/boarding.png'),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
              text: 'Welcome To WhatsApp',
              height: 20,
              fontWeight: FontWeight.bold,
              color: Color(0XFF000000),
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'Read out ', height: 14),
                UiHelper.CustomText(
                    text: 'Privacy Policy ',
                    height: 14,
                    color: Color(0XFF0C42CC)),
                UiHelper.CustomText(
                    text: 'Tap \"Agree and Continue\"', height: 14),
              ],
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(text: 'To accept he ', height: 14),
                UiHelper.CustomText(
                    text: 'Terms of Services ',
                    height: 14,
                    color: Color(0XFF0C42CC)),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callBack: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginScreen()),
            );
          },
          buttonname: 'Agree and Continue'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
