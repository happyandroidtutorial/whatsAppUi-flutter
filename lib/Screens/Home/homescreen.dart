import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home/Calls/callscreen.dart';
import 'package:whatsapp_ui/Screens/Home/Camera/camerascreen.dart';
import 'package:whatsapp_ui/Screens/Home/Chats/chatsscreen.dart';
import 'package:whatsapp_ui/Screens/Home/Status/statusscreen.dart';
import 'package:whatsapp_ui/Screens/Profile/profilescreen.dart';
import 'package:whatsapp_ui/Screens/ProfileUpdate/profileupdate.dart';
import 'package:whatsapp_ui/Screens/Settings/settingsscreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.camera_alt),
              ),
              Tab(
                text: 'CHATS',
              ),
              Tab(
                text: 'STATUS',
              ),
              Tab(
                text: 'CALLS',
              )
            ],
            indicatorColor: Colors.white,
          ),
          title: UiHelper.CustomText(
              text: 'WhatsApp',
              height: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/images/Search.png'),
            ),
            // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert_sharp))
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(value: 'Profile', child: Text('Profile')),
                PopupMenuItem(value: 'Settings', child: Text('Settings')),
              ],
              onSelected: (value) {
                if (value == 'Settings') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                } else if (value == 'Profile') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Profileupdate()),
                  );
                }
              },
            )
          ],
        ),
        body: TabBarView(children: [
          Camerascreen(),
          Chatsscreen(),
          Statusscreen(),
          Callscreen()
        ]),
      ),
    );
  }
}
