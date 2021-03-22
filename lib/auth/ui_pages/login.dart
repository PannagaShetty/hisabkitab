import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/Auth/ui_pages/OTP.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class Onboarding extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: onboarding(),
    );
  }
}

class onboarding extends StatefulWidget {
  @override
  _onboardingState createState() => _onboardingState();
}

class _onboardingState extends State<onboarding> {
  int currentPage = 0;
  PageController _pageController = new PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Stack(
        children: [
          Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Color(0xFF050A30),
                // gradient: LinearGradient(
                //     colors: [Color(0xFF050A30)],
                //     begin: Alignment.topCenter,
                //     end: Alignment.bottomCenter),
              )),
          Container(
            child: Column(
              children: [
                Expanded(
                    child: Center(
                  child: Container(
                    // height: MediaQuery.of(context).size.height * 0.5,

                    child: PageView(
                      controller: _pageController,
                      children: [
                        onBoardPage(
                            "login_1", "Keep track of your income & expenses"),
                        onBoardPage("login_2",
                            "Send alerts to people who have to pay you"),
                        onBoardPage(
                            "login_1", "Keep track of your income & expenses"),
                      ],
                      onPageChanged: (value) => {setCurrentPage(value)},
                    ),
                  ),
                )),
                Row(children: List.generate(3, (index) => getIndicator(index))),
                Expanded(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.03,
                      left: MediaQuery.of(context).size.height * 0.02,
                      right: MediaQuery.of(context).size.height * 0.02),
                  margin: EdgeInsets.only(
                      top: (MediaQuery.of(context).size.height) * 0.05),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(50),
                        topLeft: Radius.circular(50)),
                  ),
                  child: Container(
                      child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                                3, (index) => getIndicatorDots(index))),
                        Container(
                          // height: MediaQuery.of(context).size.height * 0.32,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.only(top: 40),
                          child: Text(
                            "Login / Register",
                            style: TextStyle(
                                fontSize: 30,
                                fontFamily: 'roboto',
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF3A4856)),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.only(top: 25),
                              child: Text(
                                'Enter your mobile number',
                                style: TextStyle(fontSize: 16),
                              ),
                            )
                          ],
                        ),
                        Container(
                          child: Container(
                            height: 15,
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width - 30,
                                height: 60,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    border: Border.all(
                                      color: Color(0xFF3A4856),
                                      width: 2,
                                    )),
                                child: IntrinsicHeight(
                                    child: new Row(
                                  children: [
                                    Container(
                                        height:
                                            MediaQuery.of(context).size.height,
                                        width: 200.0,
                                        padding: EdgeInsets.only(left: 10),
                                        child: TextFormField(
                                          keyboardType: TextInputType.phone,
                                          validator: _phoneNumberValidator,
                                          maxLength: 10,
                                          maxLengthEnforced: true,
                                          style: TextStyle(
                                              fontSize: 24, letterSpacing: 2),
                                          inputFormatters: <TextInputFormatter>[
                                            FilteringTextInputFormatter
                                                .digitsOnly
                                          ],
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                            counterText: "",
                                          ),
                                        ))
                                  ],
                                )))
                          ],
                        ),
                        _buildLoginBtn(true, context),
                      ],
                    ),
                  )),
                ))
              ],
            ),
          )
          //   Positioned(
          //       bottom: 0,
          //       left: 0,
          //       right: 0,
          //       child: InkWell(
          //         onTap: changePage,
          //         child: Container(
          //           height: 70,
          //           width: 70,
          //           margin: EdgeInsets.only(bottom: 30),
          //           decoration: BoxDecoration(
          //               shape: BoxShape.circle,
          //               gradient: LinearGradient(
          //                   colors: [Color(0xfff3953b), Color(0xffe57509)],
          //                   stops: [0, 1],
          //                   begin: Alignment.topCenter)),
          //           child: Icon(
          //             Icons.arrow_forward,
          //             color: Colors.white,
          //             size: 40,
          //           ),
          //         ),
          //       )),
          //
        ],
      )),
    );
  }

  setCurrentPage(int value) {
    currentPage = value;
    setState(() {});
  }

  AnimatedContainer getIndicator(int pageNo) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 100),
        height: 10,
        width: (currentPage == pageNo) ? 30 : 10,
        margin: (pageNo == 0)
            ? EdgeInsets.only(left: 40)
            : EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: (currentPage == pageNo)
                ? Color(0xFF6572D7)
                : Color(0xFFB8B2E5)));
  }

  getIndicatorDots(int pageNo) {
    return Container(
        height: 6,
        width: 6,
        margin: EdgeInsets.only(left: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(3)),
            color: Color(0xFFCDCED6)));
  }

  Container onBoardPage(String img, String title) {
    return Container(
        padding: EdgeInsets.only(top: 15, left: 30, right: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 3,
              child: Container(
                // height: 200,
                width: 250,
                child: SvgPicture.asset(
                  'asset/images/Login/$img.svg',
                  matchTextDirection: true,
                ),
                // decoration: BoxDecoration(
                //     image: DecorationImage(
                //         image: AssetImage('asset/images/Login/$img.png'))),
              ),
            ),
            Flexible(
              flex: 2,
              child: Container(
                width: 250,
                // height: 50,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 24,
                      fontFamily: 'roboto',
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                      letterSpacing: 1),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Flexible(
                flex: 1,
                child: Container(
                  // height: 80,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                    style: TextStyle(fontSize: 16, color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ))
          ],
        ));
  }

  void changePage() {
    print(currentPage);
    if (currentPage == 4) {
      // Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    } else {
      _pageController.animateToPage(currentPage + 1,
          duration: Duration(milliseconds: 200), curve: Curves.linear);
    }
  }

  ///
  /// Check if a phone number if valid or not.
  /// [phoneNumber] The phone number which will be validated.
  /// Return true if the phone number is valid. Otherwise, return false.
  bool isValidPhoneNumber(String string) {
    // Null or empty string is invalid phone number
    if (string == null || string.isEmpty) {
      return false;
    }

    // You may need to change this pattern to fit your requirement.
    // I just copied the pattern from here: https://regexr.com/3c53v
    const pattern = r'^(?:[+0]9)?[0-9]{10}$';
    final regExp = RegExp(pattern);

    if (!regExp.hasMatch(string)) {
      return false;
    }
    return true;
  }

  String _phoneNumberValidator(String value) {
    Pattern pattern = r'^(?:[+0]9)?[0-9]{10}$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Phone Number';
    else
      return null;
  }
}

Widget _buildLoginBtn(status, context) {
  return Container(
    padding: EdgeInsets.only(top: 18),
    width: 262,
    child: RaisedButton(
      elevation: 0.0,
      onPressed: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => VerifyPhone(phoneNumber: '1234567897')),
        )
      },
      padding: EdgeInsets.all(20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
      color: status ? Color(0xFF060C36) : Color(0xFFCDCED6),
      child: Text(
        'Send OTP',
        style: TextStyle(
          color: status ? Colors.white : Color(0xFF527DAA),
          letterSpacing: 1.5,
          fontSize: 18.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'OpenSans',
        ),
      ),
    ),
  );
}
