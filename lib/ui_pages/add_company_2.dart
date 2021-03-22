import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class AddCompany2 extends StatefulWidget {
  @override
  _AddCompany2State createState() => _AddCompany2State();
}

class _AddCompany2State extends State<AddCompany2> {
  int itemCount = 3;
  TextEditingController _controller = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  List<TextEditingController> controllerList = [];
  List<bool> toggleList = [];
  @override
  void initState() {
    super.initState();
  }

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
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).size.height * 0.13,
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
                          'Step 2/2',
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Add Phone numbers of your team members',
                          style: TextStyle(
                            fontSize: 27.0,
                            // fontWeight: FontWeight.bold,
                          ),
                        ),
                        // Container(
                        //   child: LabeledTextFieldWithSwitch(
                        //     label: 'Team member 1',
                        //     controller: controllerList[1],
                        //     value: false,
                        //     onToggle: (value) {},
                        //     onChanged: (value) {},
                        //   ),
                        // ),
                        ListView.builder(
                          itemCount: itemCount,
                          primary: false,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            controllerList.add(new TextEditingController());
                            toggleList.add(false);
                            return Container(
                              margin: EdgeInsets.only(bottom: 20.0),
                              child: LabeledTextFieldWithSwitch(
                                label: 'Team member ${index + 1}',
                                controller: controllerList[index],
                                value: toggleList[index],
                                onToggle: (value) {
                                  setState(() {
                                    toggleList[index] = value;
                                  });
                                },
                                onChanged: (value) {
                                  print(controllerList[index].text);
                                },
                              ),
                            );
                          },
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        InkWell(
                          onTap: () {
                            setState(() {
                              itemCount += 1;
                            });
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0)),
                            child: DottedBorder(
                              dashPattern: [8, 4],
                              borderType: BorderType.RRect,
                              radius: Radius.circular(12),
                              padding: EdgeInsets.symmetric(vertical: 18.0),
                              child: ClipRRect(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                child: Center(
                                    child: Text(
                                  '+ Add team member',
                                  style: TextStyle(
                                      fontSize: 16, color: Color(0xFF3A4856)),
                                )),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 25.0),
                                  decoration: BoxDecoration(
                                    border:
                                        Border.all(color: Color(0xFF050A30)),
                                    borderRadius: BorderRadius.circular(
                                      30.0,
                                    ),
                                  ),
                                  child: Center(
                                      child: Text(
                                    'Back',
                                    style: TextStyle(
                                        color: Color(
                                          0xFF050A30,
                                        ),
                                        fontWeight: FontWeight.bold),
                                  )),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: InkWell(
                                onTap: () {},
                                child: Container(
                                  padding: EdgeInsets.symmetric(vertical: 25.0),
                                  decoration: BoxDecoration(
                                    color: Color(0xFF050A30),
                                    border:
                                        Border.all(color: Color(0xFF050A30)),
                                    borderRadius: BorderRadius.circular(
                                      30.0,
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
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Center(
                          child: Text(
                            'Skip for now',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue,
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

class LabeledTextFieldWithSwitch extends StatelessWidget {
  const LabeledTextFieldWithSwitch({
    Key key,
    @required this.controller,
    @required this.label,
    this.value,
    this.onToggle,
    this.onChanged,
  }) : super(key: key);
  final String label;
  final TextEditingController controller;

  final onChanged;
  final value;
  final onToggle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            color: Color(0xFF3A4856),
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          children: [
            Expanded(
              flex: 16,
              child: TextFormField(
                style: TextStyle(
                  color: Color(0xFF3A4856),
                  fontSize: 16.0,
                ),
                keyboardType: TextInputType.phone,
                onChanged: onChanged,
                controller: controller,
                decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xFF6572D7), width: 2.0),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Color(0xFFEDF1F3),
                  focusColor: Color(0xFFEDF1F3),
                  isDense: true,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10.0, bottom: 1.0),
                    child: Text(
                      '+91 - ',
                      style: TextStyle(color: Color(0xFF3A4856), fontSize: 16),
                    ),
                  ),
                  prefixIconConstraints:
                      BoxConstraints(minWidth: 0, minHeight: 0),
                  hintStyle: TextStyle(color: Colors.black54),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Color(0xFFEDF1F3),
                      )),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                ),
              ),
            ),
            Spacer(),
            Expanded(
              flex: 5,
              child: Column(
                children: [
                  FlutterSwitch(
                      height: 25.0,
                      width: 50.0,
                      toggleSize: 20.0,
                      activeColor: Color(0xFF6572D7),
                      value: value,
                      activeText: 'Full Access',
                      activeTextColor: Color(0xFF6572D7),
                      inactiveText: 'Full access',
                      onToggle: onToggle),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Full access',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
