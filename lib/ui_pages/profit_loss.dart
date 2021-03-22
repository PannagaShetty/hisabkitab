import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hisab_kitab/utility_components/colors.dart';
import 'package:hisab_kitab/services/date_picker';
import 'package:intl/intl.dart';

class ProfitLoss extends StatefulWidget {
  @override
  _ProfitLossState createState() => _ProfitLossState();
}

class _ProfitLossState extends State<ProfitLoss> {
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.personalInfoHeadingsColor,
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
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Profit & Loss',
                        style: TextStyle(fontSize: 16, color: colors.white),
                      ),
                      Text(
                        'Codewave',
                        style: TextStyle(fontSize: 12, color: colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                            color: colors.white,
                            borderRadius: BorderRadius.circular(30.0)),
                        padding: EdgeInsets.only(
                            top: 18.0, bottom: 18.0, right: 15.0, left: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: SvgPicture.asset(
                                      'asset/svg/calendar@1.5x.svg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Text(
                                    DateFormat.yMd().format(selectedDate1),
                                    style: TextStyle(
                                        color: colors.greyText, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: Icon(
                                Icons.arrow_forward_sharp,
                                color: colors.iconColor,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: SvgPicture.asset(
                                      'asset/svg/calendar@1.5x.svg'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 5.0),
                                  child: Text(
                                    DateFormat.yMd().format(selectedDate2),
                                    style: TextStyle(
                                        color: colors.greyText, fontSize: 12),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5.0),
                              child: InkWell(
                                onTap: () async {
                                  List<DateTime> datetime;
                                  datetime = await selectDate(context);
                                  if (datetime != null) {
                                    setState(() {
                                      selectedDate1 = datetime[0];
                                      selectedDate2 = datetime[1];
                                    });
                                  }
                                },
                                child: Icon(
                                  Icons.keyboard_arrow_down,
                                  color: colors.iconColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                    child: Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0),
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            decoration: BoxDecoration(
                              color: colors.balanceSheetLiabilities,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(50.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '2,30,000',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: colors.assetsColor),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Expense',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: colors.assetsPagePrimary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            color: colors.balanceSheetLiabilitiesData,
                            child: ListView.builder(
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Salary',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  colors.assetsPagePrimaryLite),
                                        ),
                                      ),
                                      Text(
                                        '25,000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: colors.assetTextcolor),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ))
                        ],
                      )),
                      Expanded(
                          child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            padding: EdgeInsets.symmetric(vertical: 15.0),
                            decoration: BoxDecoration(
                              color: colors.balanceSheetAssets,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(50.0),
                              ),
                            ),
                            child: Column(
                              children: [
                                Text(
                                  '5,00,000',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      color: colors.assetsColor),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  'Income',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: colors.assetsPagePrimary,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Container(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 15.0),
                            color: colors.balanceSheetAssetsData,
                            child: ListView.builder(
                              itemCount: 3,
                              itemBuilder: (context, index) {
                                return Container(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 10.0,
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        child: Text(
                                          'Sale',
                                          style: TextStyle(
                                              fontSize: 12,
                                              color:
                                                  colors.assetsPagePrimaryLite),
                                        ),
                                      ),
                                      Text(
                                        '50,000',
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: colors.assetTextcolor),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ))
                        ],
                      ))
                    ],
                  ),
                ))
              ],
            ))
          ],
        ),
      ),
    );
  }
}
