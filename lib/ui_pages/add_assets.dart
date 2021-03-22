import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttercontactpicker/fluttercontactpicker.dart';
import 'package:hisab_kitab/utility_components/colors.dart';
import 'package:hisab_kitab/utility_components/textfield_decoration.dart';
import 'package:hisab_kitab/utility_components/widgets.dart';

class AddAsset extends StatefulWidget {
  @override
  _AddAssetState createState() => _AddAssetState();
}

class _AddAssetState extends State<AddAsset> {
  String assetWorth = '5000';
  String paidThrough = 'From a friend';
  String youBought = 'Shares';
  String selected = '';
  int position = 1;
  bool isVisble = false;
  TextEditingController assetsWorthController = new TextEditingController();
  TextEditingController boughtController = new TextEditingController();
  TextEditingController howController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController paymentMobileNumberController =
      new TextEditingController();
  TextEditingController paymentNameController = new TextEditingController();

  PhoneContact phoneNumber;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.assetsBg,
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      alignment: Alignment.topRight,
                      child: IconButton(
                        icon: Icon(
                          Icons.close,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                    )),
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 34),
                  decoration: BoxDecoration(
                    color: colors.assetDetailContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Asset worth     ',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: colors.white),
                      ),
                      Text(
                        '$assetWorth',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 32,
                            color: colors.white,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 30),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                    color: colors.assetDetailContainer,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 11.2),
                            decoration: BoxDecoration(
                                color: colors.assetsBg,
                                borderRadius: BorderRadius.circular(6)),
                            child: SvgPicture.asset(
                              'asset/svg/money-sign@1.5x (3).svg',
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'You bought',
                                style: TextStyle(
                                    fontSize: 12, color: colors.white),
                              ),
                              Text(
                                youBought,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 35,
                            height: 35,
                            padding: EdgeInsets.symmetric(
                                horizontal: 6, vertical: 11.2),
                            decoration: BoxDecoration(
                                color: colors.assetsBg,
                                borderRadius: BorderRadius.circular(6)),
                            child: SvgPicture.asset(
                              'asset/svg/money@1.5x.svg',
                            ),
                          ),
                          SizedBox(
                            width: 7,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Paid through',
                                style: TextStyle(
                                    fontSize: 12, color: colors.white),
                              ),
                              Text(
                                paidThrough,
                                style: TextStyle(
                                    fontSize: 14,
                                    color: colors.white,
                                    fontWeight: FontWeight.w600),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Opacity(
                  opacity: position < 4 ? 0 : 1,
                  child: Center(
                      child: Container(
                    decoration: BoxDecoration(
                        border:
                            Border(bottom: BorderSide(color: colors.white))),
                    child: position == 4
                        ? Text(
                            'Friend name :    -  -  -  -  -',
                            style: TextStyle(fontSize: 14, color: colors.white),
                          )
                        : Text(
                            'Raul Gomez :    9876543210',
                            style: TextStyle(fontSize: 14, color: colors.white),
                          ),
                  )),
                ),
                SizedBox(
                  height: 25,
                ),
                //add asset part 1
                Visibility(
                  visible: position == 1 ? true : false,
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DottedProgressBar(
                            selected: 1,
                          ),
                          // SizedBox(height: 20.0),
                          Expanded(
                            child: ListView(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Center(
                                  child: Text(
                                    'Asset\'s worth',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: colors.assetTextcolor),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                TextField(
                                  controller: assetsWorthController,
                                  textAlign: TextAlign.center,
                                  decoration: kInputDecoration.copyWith(
                                      hintText: 'Enter amount'),
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Wrap(
                                    spacing: 15,
                                    children: [
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '100',
                                        onPressed: () {
                                          setState(() {
                                            selected = '100';
                                            assetsWorthController.text = '100';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '200',
                                        onPressed: () {
                                          setState(() {
                                            selected = '200';
                                            assetsWorthController.text = '200';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '500',
                                        onPressed: () {
                                          setState(() {
                                            selected = '500';
                                            assetsWorthController.text = '500';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '1000',
                                        onPressed: () {
                                          setState(() {
                                            selected = '1000';
                                            assetsWorthController.text = '1000';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '2000',
                                        onPressed: () {
                                          setState(() {
                                            selected = '2000';
                                            assetsWorthController.text = '2000';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '5000',
                                        onPressed: () {
                                          setState(() {
                                            selected = '5000';
                                            assetsWorthController.text = '5000';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '10000',
                                        onPressed: () {
                                          setState(() {
                                            selected = '10000';
                                            assetsWorthController.text =
                                                '10000';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: '50000',
                                        onPressed: () {
                                          setState(() {
                                            selected = '50000';
                                            assetsWorthController.text =
                                                '50000';
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //add asset part 2
                Visibility(
                  visible: position == 2 ? true : false,
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DottedProgressBar(
                            selected: 2,
                          ),
                          // SizedBox(height: 20.0),
                          Expanded(
                            child: ListView(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Center(
                                  child: Text(
                                    'What did you buy?',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: colors.assetTextcolor),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                TextField(
                                  controller: boughtController,
                                  textAlign: TextAlign.center,
                                  decoration: kInputDecoration.copyWith(
                                      hintText: 'Your text'),
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Wrap(
                                    spacing: 15,
                                    children: [
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Machinery',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Machinery';
                                            boughtController.text = 'Machinery';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Deposit',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Deposit';
                                            boughtController.text = 'Deposit';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Land',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Land';
                                            boughtController.text = 'Land';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Stocks',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Stocks';
                                            boughtController.text = 'Stocks';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Option',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Option';
                                            boughtController.text = 'Option';
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //add asset part 3
                Visibility(
                  visible: position == 3 ? true : false,
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DottedProgressBar(
                            selected: 3,
                          ),
                          // SizedBox(height: 20.0),
                          Expanded(
                            child: ListView(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Center(
                                  child: Text(
                                    'How did you buy?',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: colors.assetTextcolor),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                TextField(
                                  controller: howController,
                                  textAlign: TextAlign.center,
                                  decoration: kInputDecoration.copyWith(
                                      hintText: 'Your text'),
                                ),
                                SizedBox(height: 20.0),
                                Center(
                                  child: Wrap(
                                    spacing: 15,
                                    children: [
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Credit',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Credit';
                                            howController.text = 'Credit';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Loan',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Loan';
                                            howController.text = 'Loan';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Bank',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Bank';
                                            howController.text = 'Bank';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Savings',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Savings';
                                            howController.text = 'Savings';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'Cash',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'Cash';
                                            howController.text = 'Cash';
                                          });
                                        },
                                      ),
                                      CustomChipWidget(
                                        selected: selected,
                                        text: 'From a friend',
                                        onPressed: () {
                                          setState(() {
                                            selected = 'From a friend';
                                            howController.text =
                                                'From a friend';
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //add asset part 4
                Visibility(
                  visible: position == 4 ? true : false,
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DottedProgressBar(
                            selected: 4,
                          ),
                          // SizedBox(height: 20.0),
                          Expanded(
                            child: ListView(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Center(
                                  child: Text(
                                    'Payment details',
                                    style: TextStyle(
                                        fontSize: 22,
                                        color: colors.assetTextcolor),
                                  ),
                                ),
                                SizedBox(height: 30.0),
                                Text(
                                  'Friend’s mobile number *',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: colors.hintTextColor,
                                  ),
                                ),
                                SizedBox(height: 6.0),
                                TextField(
                                  controller: paymentMobileNumberController,
                                  decoration: kInputDecoration.copyWith(
                                    hintText: 'Mobile Number',
                                    suffixIcon: InkWell(
                                      onTap: () async {
                                        phoneNumber = await FlutterContactPicker
                                            .pickPhoneContact();
                                        setState(() {
                                          paymentMobileNumberController.text =
                                              phoneNumber.phoneNumber.number;
                                          paymentNameController.text =
                                              phoneNumber.fullName;
                                        });
                                      },
                                      child: SvgPicture.asset(
                                          'asset/svg/Group 3@1.5x.svg'),
                                    ),
                                    hintStyle: TextStyle(
                                      fontSize: 14,
                                      color: colors.hintTextColor,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20.0),
                                Text(
                                  'Friend’s nick name (optional)',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: colors.hintTextColor),
                                ),
                                SizedBox(height: 6.0),
                                TextField(
                                  controller: paymentNameController,
                                  decoration: kInputDecoration.copyWith(
                                    hintText: 'Your text',
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: colors.hintTextColor),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                //add asset part 5
                Visibility(
                  visible: position == 5 ? true : false,
                  child: Expanded(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                      decoration: BoxDecoration(
                        color: colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                          topRight: Radius.circular(50),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          DottedProgressBar(
                            selected: 5,
                          ),
                          // SizedBox(height: 20.0),
                          Expanded(
                            child: ListView(
                              // shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                SizedBox(height: 20.0),
                                Text(
                                  'Add description (Optional)',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: colors.hintTextColor),
                                ),
                                SizedBox(height: 6.0),
                                TextField(
                                  minLines: 2,
                                  maxLines: 5,
                                  controller: descriptionController,
                                  decoration: kInputDecoration.copyWith(
                                    hintText: 'Description  ',
                                    hintStyle: TextStyle(
                                        fontSize: 14,
                                        color: colors.hintTextColor),
                                  ),
                                ),
                                SizedBox(height: 15.0),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      isVisble = true;
                                    });
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(20.0)),
                                    child: DottedBorder(
                                      color: colors.selectedContainer,
                                      dashPattern: [8, 4],
                                      borderType: BorderType.RRect,
                                      radius: Radius.circular(12),
                                      padding:
                                          EdgeInsets.symmetric(vertical: 18.0),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                                'asset/svg/photo-camera@1.5x.svg'),
                                            SizedBox(
                                              width: 5.0,
                                            ),
                                            Text(
                                              'Upload document',
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color:
                                                      colors.selectedContainer),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Visibility(
                                  visible: isVisble,
                                  child: Container(
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        SvgPicture.asset(
                                            'asset/svg/Group 11@1.5x.svg'),
                                        SizedBox(
                                          width: 10.0,
                                        ),
                                        Expanded(
                                          child: Container(
                                            padding:
                                                EdgeInsets.only(bottom: 10.0),
                                            decoration: BoxDecoration(
                                                border: Border(
                                                    bottom: BorderSide(
                                                        color: colors
                                                            .loadingProgressbar,
                                                        width: 2))),
                                            child: Row(
                                              children: [
                                                Text(
                                                  'File name 123.png',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color:
                                                          colors.hintTextColor),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '100%',
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: colors
                                                          .assetTextcolor),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        IconButton(
                                            icon: Icon(
                                              Icons.cancel_sharp,
                                              color: colors.cancelGreyColor,
                                            ),
                                            onPressed: () {})
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SafeArea(
                child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 12.0),
                child: Text(
                  'New Asset',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            )),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: EdgeInsets.all(25.0),
                  child: Row(
                    children: [
                      Visibility(
                        visible: position == 1 ? false : true,
                        child: Expanded(
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                position -= 1;
                              });
                            },
                            child: Container(
                              // width: MediaQuery.of(context).size.width / 2.5,
                              padding: EdgeInsets.symmetric(vertical: 20),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  border: Border.all(
                                    color: colors.assetsBg,
                                  )),
                              child: Text(
                                'Back',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: colors.assetsBg,
                                    fontWeight: FontWeight.w800),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Visibility(
                        visible: position == 1 ? false : true,
                        child: SizedBox(
                          width: 20,
                        ),
                      ),
                      Expanded(
                        child: InkWell(
                          onTap: () {
                            setState(() {
                              if (position < 5) position += 1;
                            });
                          },
                          child: Container(
                            // width: MediaQuery.of(context).size.width / 2.5,
                            padding: EdgeInsets.symmetric(vertical: 20),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: colors.assetsBg,
                            ),
                            child: Text(
                              'Next',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: colors.white,
                                  fontWeight: FontWeight.w800),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
