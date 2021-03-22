import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:hisab_kitab/ui_pages/add_company_2.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

import 'add_company_1.dart';

class CompanyDetails extends StatefulWidget {
  @override
  _CompanyDetailsState createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {
  TextEditingController companyController = new TextEditingController();
  TextEditingController locationController = new TextEditingController();
  TextEditingController depositController = new TextEditingController();
  TextEditingController capitalController = new TextEditingController();
  List<TextEditingController> controllerList = [];
  List<bool> toggleList = [];
  bool shareDetails = false;
  int itemCount = 1;
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.0, vertical: 25),
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          Text(
                            'BasicInfo',
                            style: TextStyle(
                                fontSize: 24,
                                color: colors.personalInfoHeadingsColor),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          LabeledTextField(
                            controller: companyController,
                            label: 'Company Name',
                            suffix: false,
                            onChanged: (value) {},
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          LabeledTextField(
                            controller: locationController,
                            label: 'Enter location(optional)',
                            suffix: true,
                            suffixIcon: Icon(Icons.my_location),
                            onChanged: (value) {},
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Text(
                            'Team members',
                            style: TextStyle(
                                fontSize: 24,
                                color: colors.personalInfoHeadingsColor),
                          ),
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
                            height: 40,
                          ),
                          Text(
                            'Cash deposit',
                            style: TextStyle(
                                fontSize: 24,
                                color: colors.personalInfoHeadingsColor),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          LabeledTextField(
                            controller: depositController,
                            label: 'Enter amount deposited for the company',
                            suffix: false,
                            onChanged: (value) {},
                          ),
                          SizedBox(
                            height: 40,
                          ),
                          Text(
                            'Capital',
                            style: TextStyle(
                                fontSize: 24,
                                color: colors.personalInfoHeadingsColor),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          LabeledTextField(
                            controller: depositController,
                            label: 'Enter the capital amount',
                            suffix: false,
                            onChanged: (value) {},
                          ),
                          SizedBox(
                            height: 50.0,
                          ),
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
                                'Update',
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
                  'Company Details',
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
