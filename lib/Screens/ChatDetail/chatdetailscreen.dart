import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';

class ChatDetailScreen extends StatelessWidget {
  final img;
  final name;

  ChatDetailScreen(this.img, this.name) {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black, //change your color here
          ),
          backgroundColor: Colors.white,
          title: ListTile(
              contentPadding: EdgeInsets.all(0),
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(img),
              ),
              title: UiHelper.CustomText(
                  text: name, height: 12, fontWeight: FontWeight.bold),
              subtitle: UiHelper.CustomText(
                text: '02:34 pm',
                height: 10,
              ),
              trailing: SizedBox(
                width: 150,
                height: 57,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.video_call_sharp,
                          color: Colors.black,
                          size: 20,
                        )),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 20,
                        )),
                    PopupMenuButton(
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: TextButton(
                            onPressed: () {},
                            child: Text(
                              'View Contact',
                              style: TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          child: TextButton(
                              onPressed: () {},
                              child: Text(
                                'Search',
                                style: TextStyle(fontSize: 12),
                              )),
                        ),
                        PopupMenuItem(
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Add to list'),
                          ),
                        ),
                        PopupMenuItem(
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Mesia,links and docs'),
                          ),
                        ),
                        PopupMenuItem(
                          child: TextButton(
                            onPressed: () {},
                            child: Text('Mute notifications'),
                          ),
                        ),
                      ],
                      iconColor: Colors.black,
                    )
                  ],
                ),
              ))),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.green.withOpacity(.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'Hi jnb',
                            maxLines: 5,
                          ),
                        )),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: Container(
                        alignment: Alignment.centerLeft,
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.black.withOpacity(.2),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Text('Hello'),
                        )),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.face),
                        suffixIcon: Padding(
                          padding: const EdgeInsets.only(right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.attach_file),
                              Icon(Icons.camera_alt),
                            ],
                          ),
                        ),
                        hintText: 'write text here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: IconButton(
                        onPressed: () {}, icon: Icon(Icons.record_voice_over)),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
