import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hisab_kitab/ui_pages/add_assets.dart';
import 'package:hisab_kitab/ui_pages/add_bank_account.dart';
import 'package:hisab_kitab/ui_pages/add_company_1.dart';
import 'package:hisab_kitab/ui_pages/add_company_2.dart';
import 'package:hisab_kitab/ui_pages/add_wallet.dart';
import 'package:hisab_kitab/ui_pages/asset_successful.dart';
import 'package:hisab_kitab/ui_pages/asset_view_page.dart';
import 'package:hisab_kitab/ui_pages/assets_file.dart';
import 'package:hisab_kitab/ui_pages/balance_sheet.dart';
import 'package:hisab_kitab/ui_pages/bank_accounts.dart';
import 'package:hisab_kitab/ui_pages/company_details.dart';
import 'package:hisab_kitab/ui_pages/e_wallet_page.dart';
import 'package:hisab_kitab/ui_pages/edit_asset.dart';
import 'package:hisab_kitab/ui_pages/edit_bank_account.dart';
import 'package:hisab_kitab/ui_pages/edit_wallet.dart';
import 'package:hisab_kitab/ui_pages/home_page.dart';
import 'package:hisab_kitab/ui_pages/personal_info.dart';
import 'package:hisab_kitab/ui_pages/profile_page.dart';
import 'package:hisab_kitab/ui_pages/profit_loss.dart';
// import 'package:hisab_kitab/Auth/otp.dart';
import 'Auth/ui_pages/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'ProximaNova'),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), openOnBoard);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('asset/images/bg.png'))),
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/images/logo.png'))),
          ),
        ),
      ),
    );
  }

  void openOnBoard() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
          // builder: (context) => VerifyPhone(phoneNumber: '1234567897')
          builder: (context) => PersonalInfo()),
    );
  }
}
