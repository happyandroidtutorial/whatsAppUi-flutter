import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/OTP/otpscreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController phoneController = TextEditingController();
  String selectedCountry = 'Pakistan';
  // by default selected country
  List<String> countries = [
    'Amirca',
    'Dubai',
    'India',
    'UK',
    'Bangladish',
    'Africa',
    'Itly',
    'Pakistan',
    'Germany'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //     appBar: AppBar(
      //   title: UiHelper.CustomText(
      //       text: 'Enter your phone number ',
      //       height: 16,
      //       color: Color(0XFF00A884),
      //       fontWeight: FontWeight.bold),
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      // )
      //                              Try without appbar

      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
              child: UiHelper.CustomText(
                  text: 'Enter your phone number',
                  height: 16,
                  color: Color(0XFF00A884),
                  fontWeight: FontWeight.bold)),
          SizedBox(
            height: 30,
          ),
          UiHelper.CustomText(
              text: 'WhatsApp will need to verify your phone', height: 14),
          SizedBox(
            height: 4,
          ),
          UiHelper.CustomText(
              text: 'number. Carrier charges may apply.', height: 14),
          SizedBox(
            height: 4,
          ),
          UiHelper.CustomText(
              text: 'What’s my number?', height: 14, color: Color(0XFF00A884)),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: DropdownButtonFormField(
              items: countries.map((String contry) {
                return DropdownMenuItem(
                  child: Text(contry.toString()),
                  value: contry,
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCountry = value!;
                });
              },
              value: selectedCountry,
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))),
                focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF00A884))),
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 60),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textBaseline: TextBaseline.alphabetic,
              children: [
                SizedBox(
                  width: 40,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      hintText: '+92',
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Color(0XFF00A884))),
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                        color: Color(0XFF00A884),
                      )),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0XFF00A884),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
      floatingActionButton: UiHelper.CustomButton(
          callBack: () {
            login(phoneController.text);
          },
          buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  login(String number) {
    if (number == "") {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Enter Phone Number'),
          backgroundColor: Colors.greenAccent,
        ),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Otpscreen( phoneNumber: number,),
        ),
      );
    }
  }
}
