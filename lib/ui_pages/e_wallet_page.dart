import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/ui_pages/bank_accounts.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class EWalletPage extends StatefulWidget {
  @override
  _EWalletPageState createState() => _EWalletPageState();
}

class _EWalletPageState extends State<EWalletPage> {
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
                          'Keep a track of all the digital\nwallets you have',
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
                                  child: Column(
                                    children: [
                                      PhysicalModel(
                                        color: Colors.black,
                                        elevation: 8.0,
                                        borderRadius:
                                            BorderRadius.circular(5.0),
                                        child: Container(
                                          decoration: BoxDecoration(
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
                                              AccountTile(
                                                title: 'PhonePe',
                                                caption: '+91-9876543210',
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15),
                                                child: Divider(),
                                              ),
                                              SizedBox(
                                                height: 5.0,
                                              ),
                                              AccountTile(
                                                title: 'Google Pay',
                                                caption: '+91-9876543210',
                                              ),
                                              SizedBox(
                                                height: 20.0,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.info_outline,
                                            size: 15,
                                            color: Color(0xFF3A4856),
                                          ),
                                          SizedBox(
                                            width: 8.0,
                                          ),
                                          Flexible(
                                              child: Text(
                                            'Note: This is for informational purposes only & to keep a track of your wallets. You cannot handle transactions here nor check balance.',
                                            style: TextStyle(
                                              height: 1.2,
                                              color: Color(0xFF3A4856),
                                            ),
                                          ))
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topLeft,
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        top: 15, left: 20),
                                    child: SvgPicture.asset(
                                        'asset/svg/walletgroup.svg'),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.topRight,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 15),
                                    child: Text(
                                      '+ Add account',
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
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: colors.white,
                  ),
                ),
                Text(
                  'e-Wallets',
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
