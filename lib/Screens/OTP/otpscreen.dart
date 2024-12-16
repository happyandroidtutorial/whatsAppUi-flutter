import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Otpscreen extends StatelessWidget {
  String phoneNumber;
  Otpscreen({required this.phoneNumber});

  TextEditingController otp1Controller = TextEditingController();
  TextEditingController otp2Controller = TextEditingController();
  TextEditingController otp3Controller = TextEditingController();
  TextEditingController otp4Controller = TextEditingController();
  TextEditingController otp5Controller = TextEditingController();
  TextEditingController otp6Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            UiHelper.CustomText(
              text: 'Verifying your number',
              height: 16,
              fontWeight: FontWeight.bold,
              color: Color(0XFF00A884),
            ),
            SizedBox(
              height: 20,
            ),
            UiHelper.CustomText(
              text: 'You’ve tried to register +92${phoneNumber}',
              height: 14,
            ),
            SizedBox(
              height: 5,
            ),
            UiHelper.CustomText(
              text: 'recently. Wait before requesting an sms or a call.',
              height: 14,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomText(
                  text: ' with your code.',
                  height: 14,
                ),
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: UiHelper.CustomText(
                      text: ' Wrong number?',
                      height: 14,
                      color: Color(0XFF00A884)),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                UiHelper.CustomContainer(otp1Controller),
                SizedBox(
                  width: 6,
                ),
                UiHelper.CustomContainer(otp2Controller),
                SizedBox(
                  width: 6,
                ),
                UiHelper.CustomContainer(otp3Controller),
                SizedBox(
                  width: 6,
                ),
                UiHelper.CustomContainer(otp4Controller),
                SizedBox(
                  width: 6,
                ),
                UiHelper.CustomContainer(otp5Controller),
                SizedBox(
                  width: 6,
                ),
                UiHelper.CustomContainer(otp6Controller),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            UiHelper.CustomText(
                text: 'Didn’t receive code?',
                height: 14,
                color: Color(0XFF00A884))
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callBack: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Profilescreen(),
              ),
            );
          },
          buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
