import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/utility_components/colors.dart';
import 'package:hisab_kitab/utility_components/widgets.dart';
import 'package:intl/intl.dart';
import 'package:hisab_kitab/services/date_picker';

class AssetsAndLiabilities extends StatefulWidget {
  @override
  _AssetsAndLiabilitiesState createState() => _AssetsAndLiabilitiesState();
}

class _AssetsAndLiabilitiesState extends State<AssetsAndLiabilities> {
  String selected = 'all';
  DateTime selectedDate1 = DateTime.now();
  DateTime selectedDate2 = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.assetsBg,
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
                  height: 8.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.arrow_back_ios_outlined,
                      color: colors.white,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: colors.white,
                          borderRadius: BorderRadius.circular(30.0)),
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.0, vertical: 15.0),
                      child: Row(
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child:
                                SvgPicture.asset('asset/svg/calendar@1.5x.svg'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              DateFormat.yMd().format(selectedDate2),
                              style: TextStyle(
                                  color: colors.greyText, fontSize: 12),
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Icon(
                              Icons.arrow_forward_sharp,
                              color: colors.iconColor,
                            ),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child:
                                SvgPicture.asset('asset/svg/calendar@1.5x.svg'),
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 5.0),
                            child: Text(
                              DateFormat.yMd().format(selectedDate1),
                              style: TextStyle(
                                  color: colors.greyText, fontSize: 12),
                            ),
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
                    SvgPicture.asset('asset/svg/analytics (1)@1.5x.svg')
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectedContainer(
                      text: 'All',
                      selected: selected == 'all' ? true : false,
                      onPressed: () {
                        setState(() {
                          selected = 'all';
                        });
                      },
                    ),
                    SelectedContainer(
                      text: 'Assets',
                      selected: selected == 'assets' ? true : false,
                      onPressed: () {
                        setState(() {
                          selected = 'assets';
                        });
                      },
                    ),
                    SelectedContainer(
                      text: 'Liabilities',
                      selected: selected == 'liabilities' ? true : false,
                      onPressed: () {
                        setState(() {
                          selected = 'liabilities';
                        });
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
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
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                decoration: BoxDecoration(
                                  color: colors.assetsBoxColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(50.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      '1,50,000',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: colors.assetsColor),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'Assets',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: colors.assetsPagePrimary,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                padding: EdgeInsets.symmetric(vertical: 15.0),
                                decoration: BoxDecoration(
                                  color: colors.liabilitiesBoxColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(50.0),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Text(
                                      '1,50,000',
                                      style: TextStyle(
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600,
                                          color: colors.liabilitiesColor),
                                    ),
                                    SizedBox(
                                      height: 5.0,
                                    ),
                                    Text(
                                      'Liabilities',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: colors.assetsPagePrimary,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: ListView.builder(
                            shrinkWrap: true,
                            itemCount: 3,
                            itemBuilder: (context, index) => Column(
                              children: [
                                Activity(
                                  color: Color(0xFFC7B198),
                                  title: 'Rental deposit',
                                  date: '22 Jan 2021      09:45 AM',
                                  type: 'Loan',
                                  cost: '1,00,000',
                                  hide: false,
                                ),
                                Activity(
                                  color: colors.assetsColor,
                                  title: 'Machinery',
                                  date: '22 Jan 2021     10:00 AM',
                                  type: 'Savings',
                                  cost: '30,100',
                                  hide: false,
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 15.0),
                child: Row(
                  children: [
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      decoration: BoxDecoration(
                        color: colors.assetsColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.0),
                          bottomLeft: Radius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Add asset',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: colors.white),
                      ),
                    )),
                    Expanded(
                        child: Container(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      decoration: BoxDecoration(
                        color: colors.liabilitiesColor,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30.0),
                          bottomRight: Radius.circular(30.0),
                        ),
                      ),
                      child: Text(
                        'Add liability',
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 16, color: colors.white),
                      ),
                    ))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SelectedContainer extends StatelessWidget {
  final bool selected;
  final String text;
  final onPressed;
  SelectedContainer({this.text, this.selected, this.onPressed});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        decoration: BoxDecoration(
            color: selected ? colors.selectedContainer : Color(0x00FFFFFF),
            borderRadius: BorderRadius.circular(25)),
        child: Column(
          children: [
            Text(
              text,
              style: TextStyle(
                color: selected ? colors.selectedContainerText : colors.white,
                fontSize: 14,
              ),
            ),
            Visibility(
              visible: selected,
              child: Text(
                '.',
                style: TextStyle(
                  color: colors.selectedContainerText,
                  fontSize: 14,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
