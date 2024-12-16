import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/ChatDetail/chatdetailscreen.dart';
import 'package:whatsapp_ui/Screens/Contacts/contactscreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Chatsscreen extends StatelessWidget {
  var arrContent = [
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Z0nIrtNXwveC1zc5JnNoPXFsduS8ynKTWA&s',
      'name': 'Aron',
      'lastmsg': 'loram ipsam',
      'time': '05:45 am',
      'msg': '10'
    },
    {
      'image':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'rony',
      'lastmsg': ' what is going on',
      'time': '07:45 am',
      'msg': '40'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Z0nIrtNXwveC1zc5JnNoPXFsduS8ynKTWA&s',
      'name': 'Aron',
      'lastmsg': 'loram ipsam',
      'time': '05:45 am',
      'msg': '10'
    },
    {
      'image':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'rony',
      'lastmsg': ' what is going on',
      'time': '07:45 am',
      'msg': '4'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Z0nIrtNXwveC1zc5JnNoPXFsduS8ynKTWA&s',
      'name': 'Aron',
      'lastmsg': 'loram ipsam',
      'time': '05:45 am',
      'msg': '10'
    },
    {
      'image':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'rony',
      'lastmsg': ' what is going on',
      'time': '07:45 am',
      'msg': '4'
    },
    {
      'image':
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5Z0nIrtNXwveC1zc5JnNoPXFsduS8ynKTWA&s',
      'name': 'Aron',
      'lastmsg': 'loram ipsam',
      'time': '05:45 am',
      'msg': '10'
    },
    {
      'image':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'rony',
      'lastmsg': ' what is going on',
      'time': '07:45 am',
      'msg': '4'
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 35,
                    backgroundImage:
                        NetworkImage(arrContent[index]['image'].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrContent[index]['name'].toString(),
                      height: 14,
                      fontWeight: FontWeight.bold),
                  subtitle: UiHelper.CustomText(
                      text: arrContent[index]['lastmsg'].toString(),
                      height: 12),
                  trailing: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      UiHelper.CustomText(
                          text: arrContent[index]['time'].toString(),
                          height: 12,
                          color: Color(0XFF026500)),
                      CircleAvatar(
                        radius: 8,
                        backgroundColor: Color(0XFF026500),
                        child: UiHelper.CustomText(
                            text: arrContent[index]['msg'].toString(),
                            height: 9,
                            color: Colors.white),
                      )
                    ],
                  ),
                  // Tap on the list tile item
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChatDetailScreen(
                              arrContent[index]['image'].toString(),
                              arrContent[index] ['name'].toString(),
                            
                            )));
                  },
                );
              },
              itemCount: arrContent.length,
              scrollDirection: Axis.vertical,
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 20,
        backgroundColor: Color(0XFF008665),
        child: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Contactscreen()),
              );
            },
            icon: Image.asset('assets/images/mode_comment_black_24dp 1.png')),
      ),
    );
  }
}
