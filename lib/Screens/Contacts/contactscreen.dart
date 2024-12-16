import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Contactscreen extends StatelessWidget {
  var arrContacts = [
    {
      'name': 'Linker',
      'img':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'status': 'cool'
    },
    {
      'name': 'Micle',
      'img':
          'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_640.jpg',
      'status': 'happy'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: 'Select Contact', height: 14, color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert_sharp),
          )
        ],
      ),
      body: Column(
        children: [
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
                        NetworkImage(arrContacts[index]['img'].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrContacts[index]['name'].toString(),
                      height: 14,
                      fontWeight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: arrContacts[index]['status'].toString(),
                      height: 12),
                  trailing: Icon(
                    Icons.call,
                    color: Color(0XFF008069),
                    size: 15,
                  ),
                );
              },
              itemCount: arrContacts.length,
            ),
          )
        ],
      ),
    );
  }
}
