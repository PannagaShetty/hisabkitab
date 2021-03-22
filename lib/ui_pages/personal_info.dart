import 'dart:io';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hisab_kitab/ui_pages/add_company_1.dart';
import 'package:hisab_kitab/utility_components/colors.dart';
import 'package:image_picker/image_picker.dart';

class PersonalInfo extends StatefulWidget {
  @override
  _PersonalInfoState createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController phoneController = new TextEditingController();
  bool shareDetails = false;
  bool imagePicked = false;
  File _image;
  void _showPicker(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return SafeArea(
            child: Container(
              child: new Wrap(
                children: <Widget>[
                  new ListTile(
                      leading: new Icon(Icons.photo_library),
                      title: new Text('Photo Library'),
                      onTap: () {
                        getImage(ImageSource.gallery);
                        Navigator.of(context).pop();
                      }),
                  new ListTile(
                    leading: new Icon(Icons.photo_camera),
                    title: new Text('Camera'),
                    onTap: () {
                      getImage(ImageSource.camera);
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              ),
            ),
          );
        });
  }

  Future getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.getImage(
      source: source,
    );

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
        imagePicked = true;
      } else {
        print('No image selected.');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF050A30),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                      Text(
                        '.   .   .   .   .   .   .   .   .   ',
                        style: TextStyle(color: Colors.white60),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 40.0,
                        ),
                        DottedBorder(
                          dashPattern: [8, 4],
                          color: colors.dashedBorderColor,
                          borderType: BorderType.RRect,
                          radius: Radius.circular(50),
                          padding: EdgeInsets.all(5),
                          child: InkWell(
                            onTap: () => _showPicker(context),
                            child: CircleAvatar(
                              radius: 45,
                              backgroundColor: colors.dashedBorderColor,
                              child: imagePicked
                                  ? ClipRRect(
                                      borderRadius: BorderRadius.circular(45),
                                      child: Container(
                                        width: 90,
                                        height: 90,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.fill,
                                                image: FileImage(
                                                  _image,
                                                ))),
                                      ),
                                    )
                                  : Text(''),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        LabeledTextField(
                          controller: nameController,
                          label: 'Full Name',
                          suffix: false,
                          onChanged: (value) {
                            // if (value.length > 0) {
                            //   setState(() {
                            //     nameNext = true;
                            //   });
                            // } else {
                            //   setState(() {
                            //     nameNext = false;
                            //   });
                            // }
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        LabeledTextField(
                          controller: phoneController,
                          label: 'Phone Number',
                          suffix: false,
                          onChanged: (value) {
                            // if (value.length > 0) {
                            //   setState(() {
                            //     shopNext = true;
                            //   });
                            // } else {
                            //   setState(() {
                            //     shopNext = false;
                            //   });
                            // }
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20),
                          decoration: BoxDecoration(
                            color: Color(0xFFF2EFFB),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Share details with others',
                                    style: TextStyle(
                                        color: Color(0xFF050A30),
                                        fontSize: 18.0),
                                  ),
                                  Spacer(),
                                  FlutterSwitch(
                                      height: 25.0,
                                      width: 50.0,
                                      activeColor: Color(0xFF6572D7),
                                      toggleSize: 20.0,
                                      value: shareDetails,
                                      onToggle: (value) {
                                        setState(() {
                                          shareDetails = value;
                                        });
                                      }),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(
                                    Icons.info_outline,
                                    color: Color(0xFF3A4856),
                                  ),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  Flexible(
                                      child: Text(
                                    'Your personal and shop details will be shared with other users who view your profile',
                                    style: TextStyle(
                                      height: 1.6,
                                      color: Color(0xFF3A4856),
                                    ),
                                  ))
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 40.0,
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 36),
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            decoration: BoxDecoration(
                              color: Color(0xFF050A30),
                              borderRadius: BorderRadius.circular(
                                50.0,
                              ),
                            ),
                            child: Center(
                                child: Text(
                              'Next',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            )),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
            SafeArea(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: colors.white,
                  ),
                ),
                Text(
                  'Personal info',
                  style: TextStyle(color: colors.white, fontSize: 16),
                ),
                Opacity(
                  opacity: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 10, horizontal: 15),
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: colors.white,
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
