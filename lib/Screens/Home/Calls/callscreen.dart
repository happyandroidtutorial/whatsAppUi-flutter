import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Callscreen extends StatelessWidget {
  var arrCallsContent = [
    {
      'name': 'Faraz',
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'time': '30 min ago'
    },
    {
      'name': 'Afaq',
      'img':
          'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_640.jpg',
      'time': '1 day ago'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            UiHelper.CustomText(text: 'Recent', height: 16),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage:
                      NetworkImage(arrCallsContent[index]['img'].toString()),
                ),
                title: UiHelper.CustomText(
                    text: arrCallsContent[index]['name'].toString(),
                    height: 14,
                    fontWeight: FontWeight.bold),
                subtitle: UiHelper.CustomText(
                    text: arrCallsContent[index]['time'].toString(),
                    height: 12),
                trailing: Icon(
                  Icons.call,
                  color: Color(0XFF008069),
                  size: 15,
                ),
              );
            },
            itemCount: arrCallsContent.length,
          ),
        )
      ],
    ));
  }
}
