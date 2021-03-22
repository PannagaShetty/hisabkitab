import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class AssetView extends StatefulWidget {
  @override
  _AssetViewState createState() => _AssetViewState();
}

class _AssetViewState extends State<AssetView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: colors.assetsBg,
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: colors.white,
                        ),
                      ),
                      Text(
                        'Asset details',
                        style: TextStyle(fontSize: 18, color: colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: SvgPicture.asset(
                            'asset/svg/analytics (1)@1.5x.svg'),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(20.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          topLeft: Radius.circular(50),
                        ),
                        color: colors.white,
                      ),
                      child: ListView(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset('asset/svg/calendar@1.5x.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '13 Jan 2021',
                                style: TextStyle(
                                    fontSize: 14, color: colors.assetTextcolor),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              SvgPicture.asset('asset/svg/Oval Copy 3.svg'),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '13 Jan 2021',
                                style: TextStyle(
                                    fontSize: 14, color: colors.assetTextcolor),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.0, vertical: 25.0),
                            decoration: BoxDecoration(
                              color: colors.assetViewContainerColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  'Asset worth',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: colors.hintTextColor,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.0,
                                ),
                                Text(
                                  '5,000',
                                  style: TextStyle(
                                      fontSize: 36,
                                      color: colors.assetsBg,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Text(
                                  'I bought 100 XYZ shares@ Rs 100.00',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: colors.assetTextcolor,
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    IconText(
                                      descriptionText: 'Shares',
                                      headingText: 'You bought',
                                      svgAsset:
                                          'asset/svg/money-sign@1.5x (5).svg',
                                    ),
                                    IconText(
                                      descriptionText: 'From friend',
                                      headingText: 'Paid through',
                                      svgAsset: 'asset/svg/Shape 2@1.5x.svg',
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 10),
                                  decoration: BoxDecoration(
                                      color: colors.assetViewContainer2Color,
                                      borderRadius: BorderRadius.circular(8.0)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'asset/svg/contact-book@1.5x.svg',
                                      ),
                                      SizedBox(
                                        width: 10.0,
                                      ),
                                      Text(
                                        'Raul Gomez - 9876543210',
                                        style: TextStyle(
                                          color: colors.assetTextcolor,
                                          fontSize: 14.0,
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Text(
                            'Uploaded Document',
                            style: TextStyle(
                                color: colors.hintTextColor, fontSize: 14.0),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.height / 6,
                            child: ListView.builder(
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              itemCount: 3,
                              itemBuilder: (context, index) => AspectRatio(
                                aspectRatio: 1,
                                child: Container(
                                  child:
                                      Image.asset('asset/images/onboard2.png'),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
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
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
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
                  ],
                ),
              ))
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final String svgAsset;
  final String headingText;
  final String descriptionText;

  const IconText(
      {Key key, this.descriptionText, this.headingText, this.svgAsset})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          PhysicalModel(
            color: Colors.black,
            elevation: 8.0,
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              width: 50,
              height: 50,
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 14),
              decoration: BoxDecoration(
                  color: colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: SvgPicture.asset(svgAsset),
            ),
          ),
          SizedBox(
            width: 10.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                headingText,
                style: TextStyle(
                  fontSize: 12,
                  color: colors.hintTextColor,
                ),
              ),
              Text(
                descriptionText,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: colors.assetTextcolor,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
