import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: UiHelper.CustomText(
            text: 'Settings',
            height: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          )
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundImage: NetworkImage(
                  'https://cdn.pixabay.com/photo/2015/01/08/18/29/entrepreneur-593358_640.jpg'),
            ),
            title: UiHelper.CustomText(
                text: 'Hassan Sajjad', height: 16, fontWeight: FontWeight.bold),
            subtitle: UiHelper.CustomText(text: 'Ui/Ux Designer', height: 14),
            trailing: SizedBox(
              height: 80,
              width: 150,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.qr_code,
                        color: Colors.greenAccent,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.history,
                        color: Colors.greenAccent,
                      ))
                ],
              ),
            ),
          ),
          SizedBox(
            height: 13,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Container(
              height: 1,
              width: double.infinity,
              color: const Color.fromARGB(255, 210, 208, 208),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          UiHelper.CustomListTile(
              icon: Icons.key,
              title: 'Account',
              subtitle: 'securty,notification,change number',
              callBack: () {}),
          UiHelper.CustomListTile(
              icon: Icons.lock,
              title: 'Privacy',
              subtitle: 'Block cotent, disapearing messages',
              callBack: () {}),
          UiHelper.CustomListTile(
              icon: Icons.person,
              title: 'Avatar',
              subtitle: 'create,edit profile photo',
              callBack: () {}),
          UiHelper.CustomListTile(
              icon: Icons.chat,
              title: 'Chats',
              subtitle: 'Themes,wallpapers,chat history',
              callBack: () {}),
          UiHelper.CustomListTile(
              icon: Icons.notification_add_rounded,
              title: 'Notifications',
              subtitle: 'Notifications,group,and call tones',
              callBack: () {}),
        ],
      ),
    );
  }
}
