import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton({required callBack, required String buttonname}) {
    return SizedBox(
      height: 45,
      width: 350,
      child: ElevatedButton(
          onPressed: () {
            callBack();
          },
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40))),
          child: Text(
            buttonname,
            style: TextStyle(fontSize: 14, color: Colors.white),
          )),
    );
  }

  static CustomText(
      {required String text,
      required double height,
      Color? color,
      FontWeight? fontWeight}) {
    return Text(
      text,
      style: TextStyle(
          fontSize: height,
          color: color ?? Color(0XFF5E5E5E),
          fontWeight: fontWeight),
    );
  }

  static CustomContainer(TextEditingController controller) {
    return Container(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        // 0XFFD9D9D9A1
        color: Color(0XD9D9D9A1),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          cursorColor: Color(0XFF5E5E5E),
          controller: controller,
          decoration: InputDecoration(border: InputBorder.none),
        ),
      ),
    );
  }

  static CustomListTile(
      {required IconData icon,
      required title,
      required subtitle,
      required callBack}) {
    return ListTile(
      leading: Icon(icon),
      title: UiHelper.CustomText(
          text: title, height: 18, fontWeight: FontWeight.bold),
      subtitle: UiHelper.CustomText(
        text: subtitle,
        height: 14,
      ),
      onTap: () {
        callBack();
      },
    );
  }
}
