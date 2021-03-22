import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hisab_kitab/ui_pages/add_company_1.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class EditBankAccount extends StatefulWidget {
  @override
  _EditBankAccountState createState() => _EditBankAccountState();
}

class _EditBankAccountState extends State<EditBankAccount> {
  TextEditingController bankNameController = new TextEditingController();
  TextEditingController userNameController = new TextEditingController();
  TextEditingController accountNumberController = new TextEditingController();
  TextEditingController ifscController = new TextEditingController();
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
                    padding: EdgeInsets.symmetric(
                      horizontal: 15.0,
                    ),
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Text(
                          'Edit bank account',
                          style: TextStyle(
                              fontSize: 24,
                              color: colors.personalInfoHeadingsColor,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Expanded(
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Stack(
                              children: [
                                Container(
                                  child: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        Container(
                                          decoration: BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Colors.black26,
                                                  blurRadius:
                                                      10.0, // soften the shadow
                                                  spreadRadius:
                                                      1.0, //extend the shadow
                                                  offset: Offset(
                                                    2.0, // Move to right 10  horizontally
                                                    2.0, // Move to bottom 10 Vertically
                                                  ),
                                                )
                                              ],
                                              color: colors.white,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Column(
                                            children: [
                                              Container(
                                                decoration: BoxDecoration(
                                                  color:
                                                      colors.bankContainerColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                    topLeft: Radius.circular(5),
                                                    topRight:
                                                        Radius.circular(5),
                                                  ),
                                                ),
                                                height: 45.0,
                                              ),
                                              SizedBox(
                                                height: 35.0,
                                              ),
                                              Container(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 15.0),
                                                child: Column(
                                                  children: [
                                                    LabeledTextField(
                                                        controller:
                                                            bankNameController,
                                                        label: 'Bank name',
                                                        suffix: true,
                                                        suffixIcon: Icon(
                                                          Icons
                                                              .keyboard_arrow_down_outlined,
                                                        )),
                                                    SizedBox(
                                                      height: 20.0,
                                                    ),
                                                    LabeledTextField(
                                                      controller:
                                                          userNameController,
                                                      label:
                                                          'Account holder’s name',
                                                      suffix: false,
                                                    ),
                                                    SizedBox(
                                                      height: 20.0,
                                                    ),
                                                    LabeledTextField(
                                                      controller:
                                                          accountNumberController,
                                                      label: 'Account number',
                                                      suffix: true,
                                                      suffixIcon: Icon(
                                                        Icons
                                                            .remove_red_eye_outlined,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 20.0,
                                                    ),
                                                    LabeledTextField(
                                                      controller:
                                                          ifscController,
                                                      label: 'IFSC Code',
                                                      suffix: false,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: 20.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 50,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.delete_outline_rounded,
                                                color: colors
                                                    .personalInfoHeadingsColor,
                                              ),
                                              Text(
                                                'Delete account',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  color: colors
                                                      .personalInfoHeadingsColor,
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        InkWell(
                                          onTap: () {},
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                .size
                                                .width,
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 40),
                                            padding: EdgeInsets.symmetric(
                                                vertical: 20.0),
                                            decoration: BoxDecoration(
                                              color: Color(0xFF050A30),
                                              borderRadius:
                                                  BorderRadius.circular(
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
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20),
                                    child: SvgPicture.asset(
                                        'asset/svg/bankgroup.svg'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Text(
                                      'Axis bank',
                                      style: TextStyle(
                                          fontSize: 14, color: colors.white),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
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
                  child: Opacity(
                    opacity: 0,
                    child: Icon(
                      Icons.arrow_back_ios,
                      color: colors.white,
                    ),
                  ),
                ),
                Text(
                  'Bank accounts',
                  style: TextStyle(color: colors.white, fontSize: 16),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Icon(
                    Icons.close,
                    color: colors.white,
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
