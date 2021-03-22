import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hisab_kitab/ui_pages/add_company_2.dart';

class AddCompany extends StatefulWidget {
  @override
  _AddCompanyState createState() => _AddCompanyState();
}

class _AddCompanyState extends State<AddCompany> {
  bool step1 = true;
  bool shareDetails = false;
  bool nameNext = false;
  bool shopNext = false;
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = new TextEditingController();
  TextEditingController shopController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xFF050A30),
        child: Stack(
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
            SafeArea(
                child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  'Add Company',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )),
            SafeArea(
                child: Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: Icon(
                  Icons.close,
                  color: Colors.white,
                ),
                onPressed: () {},
              ),
            )),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.05,
                  left: MediaQuery.of(context).size.height * 0.02,
                  right: MediaQuery.of(context).size.height * 0.02),
              margin: EdgeInsets.only(
                  top: (MediaQuery.of(context).size.height) * 0.13),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(50),
                    topLeft: Radius.circular(50)),
              ),
              child: Container(
                child: SingleChildScrollView(
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Step 1/2',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Great! Let\'s start with your shop details',
                          style:
                              TextStyle(fontSize: 24.0, color: Color(0xFF050A30)
                                  // fontWeight: FontWeight.bold,
                                  ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                        LabeledTextField(
                          controller: nameController,
                          label: 'Enter the name*',
                          suffix: false,
                          onChanged: (value) {
                            if (value.length > 0) {
                              setState(() {
                                nameNext = true;
                              });
                            } else {
                              setState(() {
                                nameNext = false;
                              });
                            }
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        LabeledTextField(
                          controller: shopController,
                          label: 'Enter shop name*',
                          suffix: false,
                          onChanged: (value) {
                            if (value.length > 0) {
                              setState(() {
                                shopNext = true;
                              });
                            } else {
                              setState(() {
                                shopNext = false;
                              });
                            }
                          },
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        LabeledTextField(
                          controller: locationController,
                          label: 'Enter location(optional)',
                          suffix: true,
                          suffixIcon: Icon(Icons.my_location),
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
                        InkWell(
                          onTap: () {
                            if (nameNext && shopNext) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => AddCompany2(),
                                  ));
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(
                                horizontal:
                                    MediaQuery.of(context).size.width / 5),
                            padding: EdgeInsets.symmetric(vertical: 20.0),
                            decoration: BoxDecoration(
                              color: nameNext && shopNext
                                  ? Color(0xFF050A30)
                                  : Colors.grey,
                              borderRadius: BorderRadius.circular(
                                25.0,
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
                        Center(
                          child: Text(
                            'Skip for now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF6572D7),
                                fontSize: 18.0),
                          ),
                        ),
                        SizedBox(
                          height: 30.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LabeledTextField extends StatelessWidget {
  const LabeledTextField({
    Key key,
    @required this.controller,
    @required this.label,
    this.suffix,
    this.suffixIcon,
    this.onChanged,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;
  final bool suffix;
  final suffixIcon;
  final onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, color: Color(0xFF3A4856)),
        ),
        SizedBox(
          height: 10.0,
        ),
        TextFormField(
          onChanged: onChanged,
          controller: controller,
          style: TextStyle(color: Color(0xFF050A30), fontSize: 16),
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xFFEDF1F3),
            focusColor: Color(0xFFEDF1F3),
            focusedBorder: OutlineInputBorder(
              borderSide:
                  const BorderSide(color: Color(0xFF6572D7), width: 2.0),
              borderRadius: BorderRadius.circular(10.0),
            ),
            suffixIcon: suffix ? suffixIcon : Text(''),
            isDense: true,
            prefixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Color(0xFFEDF1F3),
                )),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          ),
        ),
      ],
    );
  }
}
