import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Statusscreen extends StatelessWidget {
  var arrStatusContent = [
    {
      'image':
          'https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg',
      'name': 'Michel',
      'statustime': '15 min ago'
    },
    {
      'image':
          'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_640.jpg',
      'name': 'Daniyal',
      'statustime': '1 day ago'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            SizedBox(
              width: 15,
            ),
            UiHelper.CustomText(text: 'Status', height: 16),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Stack(children: [
              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(
                    'https://static.vecteezy.com/system/resources/thumbnails/004/511/281/small/default-avatar-photo-placeholder-profile-picture-vector.jpg'),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Color(0XFF008069),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 10,
                  ),
                ),
              )
            ]),
          ),
          title: UiHelper.CustomText(text: 'My Status', height: 16),
          subtitle:
              UiHelper.CustomText(text: 'Tap to add status update', height: 12),
        ),
        SizedBox(
          height: 15,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              UiHelper.CustomText(text: 'Recent updates', height: 15),
              Icon(
                Icons.arrow_drop_down,
                color: Color(0XFF5E5E5E),
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(top: 6.0),
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                        arrStatusContent[index]['image'].toString()),
                  ),
                  title: UiHelper.CustomText(
                      text: arrStatusContent[index]['name'].toString(),
                      height: 14,
                      fontWeight: FontWeight.bold),
                  trailing: UiHelper.CustomText(
                      text: arrStatusContent[index]['statustime'].toString(),
                      height: 12),
                ),
              );
            },
            itemCount: arrStatusContent.length,
          ),
        )
      ],
    ));
  }
}
