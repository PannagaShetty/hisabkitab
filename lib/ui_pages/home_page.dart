import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hisab_kitab/utility_components/widgets.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
        child: SingleChildScrollView(
          physics: visible
              ? NeverScrollableScrollPhysics()
              : AlwaysScrollableScrollPhysics(),
          controller: _scrollController,
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
                child: Container(
                  padding: EdgeInsets.only(
                      top: 3, left: MediaQuery.of(context).size.height * 0.02),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Namaste, Codewave',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Text(
                            '9876543210',
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Spacer(),
                      IconButton(
                        icon: Icon(Icons.notifications_none),
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hisab kitaab barabar?',
                      style: TextStyle(fontSize: 21),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      'Let\'s get tallying..',
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              CurvedContainer(
                                color: Color(0xFF726A95),
                                icon: 'asset/svg/money-sign@1.5x.svg',
                                text: 'My Assets &\nliabilities',
                              ),
                              Spacer(),
                              CurvedContainer(
                                color: Color(0xFF709FB0),
                                icon: 'asset/svg/check-in@1.5x.svg',
                                text: 'My Expenses &\nincome',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Row(
                            children: [
                              CurvedContainer(
                                color: Color(0xFFC7B198),
                                icon: 'asset/svg/recycle-water@1.5x.svg',
                                text: 'My Self &\ntransfers',
                              ),
                              Spacer(),
                              CurvedContainer(
                                color: Color(0xFF6DAB9A),
                                icon: 'asset/svg/mastercard@1.5x.svg',
                                text: 'My Receipts &\npayments',
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 40.0,
                    ),
                    Text(
                      'Recent Activity',
                      style: TextStyle(fontSize: 22),
                    ),
                    SizedBox(height: 20.0),
                    Activity(
                      color: Color(0xFF726A95),
                      title: 'Old laptop second sale',
                      date: 'Today      10:45 AM',
                      type: 'Credit',
                      cost: '30,100',
                      hide: false,
                    ),
                    Activity(
                      color: Color(0xFFC7B198),
                      title: 'Internet bill pay',
                      date: '22 Jan 2021      10:20 AM',
                      type: 'Debit',
                      cost: '2500',
                      hide: false,
                    ),
                    Activity(
                      color: Color(0xFF726A95),
                      title: 'Invoice payment recd',
                      date: '22 Jan 2021     10:00 AM',
                      type: 'Credit',
                      cost: '30,100',
                      hide: false,
                    ),
                    Activity(
                      color: Color(0xFFC7B198),
                      title: 'Business loan',
                      date: 'Today      09:45 AM',
                      type: 'Credit',
                      cost: '1,00,000',
                      hide: true,
                    ),
                  ],
                ),
              ),
//              Visibility(
//                visible: visible,
//                child: Container(
//                  height: MediaQuery.of(context).size.height,
//                  width: MediaQuery.of(context).size.width,
//                  color: Color(0x50000000),
//                ),
//              ),
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
      ),
    );
  }
}
