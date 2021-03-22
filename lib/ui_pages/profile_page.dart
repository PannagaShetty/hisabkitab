import 'dart:ui';

import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hisab_kitab/ui_pages/edit_asset.dart';
import 'package:hisab_kitab/utility_components/colors.dart';
import 'package:hisab_kitab/utility_components/widgets.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  ScrollController _scrollController = new ScrollController();
  bool isPlaying = false;
  bool visible = false;
  AnimationController _animationController;

  void _handleOnPressed() {
    isPlaying
        ? _scrollController.animateTo(
            _scrollController.position.minScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          )
        : _scrollController.animateTo(
            _scrollController.position.maxScrollExtent,
            curve: Curves.easeOut,
            duration: const Duration(milliseconds: 300),
          );
    setState(() {
      visible = !visible;
      isPlaying = !isPlaying;
      isPlaying
          ? _animationController.forward()
          : _animationController.reverse();
    });
  }

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 450));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => _handleOnPressed(),
        child: AnimatedIcon(
          icon: AnimatedIcons.menu_close,
          progress: _animationController,
        ),
        backgroundColor: Color(0xFF050A30),
      ),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        child: Container(
          color: Colors.transparent,
          margin: EdgeInsets.only(left: 10, right: 10, bottom: 10),
          child: ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(50)),
            child: BottomNavigationBar(
              backgroundColor: Color(0xFF050A30),
              type: BottomNavigationBarType.fixed,
              iconSize: 30,
              selectedItemColor: Color.fromRGBO(179, 136, 101, 1),
              // selectedIconTheme: IconThemeData(color: Colors.red),
              unselectedItemColor: Colors.white,
              items: [
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('asset/svg/Shape@1.5x (4).svg'),
                    label: 'Home',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('asset/svg/Balance Copy@1.5x.svg'),
                    label: 'Profits',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: SizedBox(), label: '', backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('asset/svg/Reports@1.5x.svg'),
                    label: 'Bal. Sheet',
                    backgroundColor: Colors.blue),
                BottomNavigationBarItem(
                    icon: SvgPicture.asset('asset/svg/Shape@1.5x (3).svg'),
                    label: 'Profile',
                    backgroundColor: Colors.blue)
              ],
            ),
          ),
        ),
      ),
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
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'My Profile',
                    style: TextStyle(fontSize: 16, color: colors.white),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  DottedBorder(
                    dashPattern: [8, 4],
                    color: colors.white,
                    borderType: BorderType.RRect,
                    radius: Radius.circular(50),
                    padding: EdgeInsets.all(5),
                    child: CircleAvatar(
                      radius: 45,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'John Doe',
                    style: TextStyle(fontSize: 20, color: colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 80),
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: colors.profilePageContainerColor,
                        borderRadius: BorderRadius.circular(25)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset('asset/svg/home.svg'),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'John Doe’s Electricals',
                          style: TextStyle(
                            fontSize: 14,
                            color: colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: Container(
                    padding:
                        EdgeInsets.only(left: 25.0, right: 25.0, top: 28.0),
                    decoration: BoxDecoration(
                      color: colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    child: ListView(
                      shrinkWrap: true,
                      physics: visible
                          ? NeverScrollableScrollPhysics()
                          : AlwaysScrollableScrollPhysics(),
                      controller: _scrollController,
                      children: [
                        ProfilePageListTile(
                          prefixIconAsset: 'asset/svg/profile.svg',
                          suffixIconAsset: 'asset/svg/arrow.svg',
                          title: 'Personal info',
                          caption: 'Name, phone number',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfilePageListTile(
                          prefixIconAsset: 'asset/svg/comp.svg',
                          suffixIconAsset: 'asset/svg/arrow.svg',
                          title: 'Company details',
                          caption: 'Shop name, location, capital, deposit',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfilePageListTile(
                          prefixIconAsset: 'asset/svg/bank.svg',
                          suffixIconAsset: 'asset/svg/arrow.svg',
                          title: 'Bank accounts',
                          caption: 'Axis Bank - XX 0912 (Bal: 5,23,000)',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfilePageListTile(
                          prefixIconAsset: 'asset/svg/bank.svg',
                          suffixIconAsset: 'asset/svg/arrow.svg',
                          title: 'e-Wallets',
                          caption: 'PhonePe, GooglePay',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ProfilePageListTile(
                          prefixIconAsset: 'asset/svg/info.svg',
                          suffixIconAsset: 'asset/svg/arrow.svg',
                          title: 'Help',
                          caption: 'Privacy policy, terms & conditions',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 4,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SvgPicture.asset('asset/svg/logout.svg'),
                              SizedBox(
                                width: 15,
                              ),
                              Expanded(
                                child: Text(
                                  'Logout',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: colors.assetsPagePrimary),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ))
                ],
              ),
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 16,
              child: Visibility(
                visible: visible,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                  width: MediaQuery.of(context).size.width,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 4,
                        sigmaY: 4,
                      ),
                      child: PhysicalModel(
                        color: Colors.black,
                        elevation: 20.0,
                        shadowColor: Colors.grey,
                        borderRadius: BorderRadius.circular(15.0),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 5),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.0, vertical: 15.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Color(0xFF0B103A),
                          ),
                          child: Column(
                            children: [
                              Text(
                                'What would you like to add?',
                                textAlign: TextAlign.center,
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AddNew(
                                    title: 'Expense',
                                    asset: 'asset/svg/Group 2@1.5x.svg',
                                  ),
                                  AddNew(
                                    title: 'Expense',
                                    asset: 'asset/svg/Group 2@1.5x.svg',
                                  ),
                                  AddNew(
                                    title: 'Payments',
                                    asset: 'asset/svg/money@1.5x.svg',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  AddNew(
                                    title: 'Expense',
                                    asset: 'asset/svg/Group 2@1.5x.svg',
                                  ),
                                  AddNew(
                                    title: 'Expense',
                                    asset: 'asset/svg/Group 2@1.5x.svg',
                                  ),
                                  AddNew(
                                    title: 'Reciepts',
                                    asset: 'asset/svg/invoice (1)@1.5x.svg',
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  AddNew(
                                    title: 'Expense',
                                    asset: 'asset/svg/Group 2@1.5x.svg',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
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

class ProfilePageListTile extends StatelessWidget {
  final String prefixIconAsset;
  final String suffixIconAsset;
  final String title;
  final String caption;
  const ProfilePageListTile(
      {Key key,
      this.title,
      this.caption,
      this.prefixIconAsset,
      this.suffixIconAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SvgPicture.asset(prefixIconAsset),
          SizedBox(
            width: 15,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style:
                      TextStyle(fontSize: 18, color: colors.assetsPagePrimary),
                ),
                Text(
                  caption,
                  style: TextStyle(fontSize: 14, color: colors.assetTextcolor),
                )
              ],
            ),
          ),
          SvgPicture.asset(suffixIconAsset),
        ],
      ),
    );
  }
}
