import 'dart:io';

import 'package:flutter/material.dart';
import 'package:whatsapp_ui/Screens/Home/homescreen.dart';
import 'package:whatsapp_ui/Widgets/uihelper.dart';
import 'package:image_picker/image_picker.dart';

class Profilescreen extends StatefulWidget {
  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  TextEditingController nameController = TextEditingController();
  // variable that hold the image path
  File? pickedImage;

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: height * .1,
            ),
            UiHelper.CustomText(
                text: 'Profile Info',
                height: 16,
                color: Color(0XFF00A884),
                fontWeight: FontWeight.bold),
            SizedBox(
              height: 25,
            ),
            UiHelper.CustomText(
                text: 'Please provide your name and an optional', height: 14),
            SizedBox(
              height: 6,
            ),
            UiHelper.CustomText(text: 'profile photo', height: 14),
            SizedBox(
              height: 25,
            ),
            GestureDetector(
                onTap: () {
                  _openBottom(context);
                },
                child: pickedImage == null
                    ? CircleAvatar(
                        radius: 70,
                        backgroundColor: Color(0XFFD9D9D98A),
                        child: Image.asset(
                          'assets/images/photo_camera.png',
                          height: 35,
                          fit: BoxFit.cover,
                        ),
                      )
                    : CircleAvatar(
                        radius: 70, backgroundImage: FileImage(pickedImage!))),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 60),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                          hintText: 'Type your name here',
                          hintStyle: TextStyle(fontSize: 12),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF00A884),
                            ),
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF00A884),
                            ),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: Color(0XFF00A884),
                            ),
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Image.asset('assets/images/happy_face.png'),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
          callBack: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Homescreen(),
              ),
            );
          },
          buttonname: 'Next'),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  _openBottom(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {
                        _pickImage(ImageSource.camera);
                      },
                      icon: Icon(
                        Icons.camera_alt,
                        size: 35,
                        color: Colors.grey,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          _pickImage(ImageSource.gallery);
                        },
                        icon: Icon(
                          Icons.image_rounded,
                          size: 35,
                          color: Colors.grey,
                        ))
                  ],
                )
              ],
            ),
          );
        });
  }

  _pickImage(ImageSource imageSource) async {
    try {
      final photo = await ImagePicker().pickImage(source: imageSource);
      if (photo == null) return;
      final tempImage = File(photo.path);
      setState(() {
        pickedImage = tempImage;
      });
    } catch (ex) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(ex.toString()),
        ),
      );
    }
  }
}



//  _pickImage(ImageSource imageSource) async {
//     final ImagePicker picker = ImagePicker(); // Initialize ImagePicker
//     final XFile? image =
//         await picker.pickImage(source: imageSource); // Corrected this line
//     if (image == null) return; // If no image is selected, return
//     var tempImage =
//         XFile(image.path); // Create a new XFile instance with the image path
//     setState(() {
//       pickedImage =
//           tempImage as File?; // Update the state with the picked image
//     });
//   }