import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class CurvedContainer extends StatelessWidget {
  final String icon;
  final String text;
  final Color color;
  CurvedContainer({this.text, this.color, this.icon});
  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black,
      elevation: 8.0,
      borderRadius: BorderRadius.circular(20.0),
      child: Container(
        width: MediaQuery.of(context).size.width / 2.3,
        height: MediaQuery.of(context).size.height / 8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: color,
        ),
        padding:
            EdgeInsets.only(left: 15.0, right: 5.0, bottom: 10.0, top: 10.0),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                text,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
                child: SvgPicture.asset(icon),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyBullet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: EdgeInsets.only(top: 5.0),
      height: 10.0,
      width: 10.0,
      decoration: new BoxDecoration(
        color: Color(0xFFEADCCD),
        shape: BoxShape.circle,
      ),
    );
  }
}

class Activity extends StatelessWidget {
  final String date;
  final String title;
  final String type;
  final String cost;
  final Color color;
  final bool hide;
  Activity(
      {this.color, this.title, this.date, this.cost, this.type, this.hide});
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            MyBullet(),
            Column(
              children: List.generate(
                4,
                (ii) => Padding(
                    padding:
                        EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
                    child: Container(
                      height: 3,
                      width: 2,
                      color: hide ? Colors.white : Color(0xFFEADCCD),
                    )),
              ),
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 16.0, color: colors.assetsPagePrimary),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              date,
              style: TextStyle(color: colors.assetsPagePrimaryLite),
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              cost,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
                color: color,
              ),
            ),
            SizedBox(
              height: 4.0,
            ),
            Text(
              type,
              style: TextStyle(color: colors.assetsPagePrimary),
            ),
          ],
        )
      ],
    ));
  }
}

class AddNew extends StatelessWidget {
  final String asset;
  final String title;
  AddNew({this.title, this.asset});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
        color: Color(0xFF101645),
      ),
      padding: EdgeInsets.all(20.0),
      child: Column(
        children: [
          SvgPicture.asset(asset),
          Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}

class DottedProgressBar extends StatelessWidget {
  final int selected;
  DottedProgressBar({this.selected});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: selected == 1
                ? SvgPicture.asset('asset/svg/Oval Copy 2.svg')
                : selected < 1
                    ? SvgPicture.asset('asset/svg/Oval Copy 3.svg')
                    : SvgPicture.asset('asset/svg/Shape.svg'),
          ),
          Row(
            children: List.generate(
              4,
              (ii) => Padding(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
                  child: Container(
                    height: 2,
                    width: 5,
                    color: selected < 2
                        ? colors.notSelectedGrey
                        : colors.selectedContainer,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: selected == 2
                ? SvgPicture.asset('asset/svg/Oval Copy 2.svg')
                : selected < 2
                    ? SvgPicture.asset('asset/svg/Oval Copy 3.svg')
                    : SvgPicture.asset('asset/svg/Shape.svg'),
          ),
          Row(
            children: List.generate(
              4,
              (ii) => Padding(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
                  child: Container(
                    height: 2,
                    width: 5,
                    color: selected < 3
                        ? colors.notSelectedGrey
                        : colors.selectedContainer,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: selected == 3
                ? SvgPicture.asset('asset/svg/Oval Copy 2.svg')
                : selected < 3
                    ? SvgPicture.asset('asset/svg/Oval Copy 3.svg')
                    : SvgPicture.asset('asset/svg/Shape.svg'),
          ),
          Row(
            children: List.generate(
              4,
              (ii) => Padding(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
                  child: Container(
                    height: 2,
                    width: 5,
                    color: selected < 4
                        ? colors.notSelectedGrey
                        : colors.selectedContainer,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: selected == 4
                ? SvgPicture.asset('asset/svg/Oval Copy 2.svg')
                : selected < 4
                    ? SvgPicture.asset('asset/svg/Oval Copy 3.svg')
                    : SvgPicture.asset('asset/svg/Shape.svg'),
          ),
          Row(
            children: List.generate(
              4,
              (ii) => Padding(
                  padding:
                      EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
                  child: Container(
                    height: 2,
                    width: 5,
                    color: selected < 5
                        ? colors.notSelectedGrey
                        : colors.selectedContainer,
                  )),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5.0),
            child: selected == 5
                ? SvgPicture.asset('asset/svg/Oval Copy 2.svg')
                : selected < 5
                    ? SvgPicture.asset('asset/svg/Oval Copy 3.svg')
                    : SvgPicture.asset('asset/svg/Shape.svg'),
          ),
        ],
      ),
    );
  }
}

class CustomChipWidget extends StatelessWidget {
  final String text;
  final onPressed;
  final String selected;
  CustomChipWidget({this.selected, this.onPressed, this.text});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Chip(
        label: Text(
          text,
          style: TextStyle(
              fontSize: 14,
              color: selected == text ? colors.white : colors.hintTextColor),
        ),
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        backgroundColor:
            selected == text ? colors.selectedContainer : colors.white,
        shape: StadiumBorder(
          side: BorderSide(
            color: selected == text
                ? colors.selectedContainer
                : colors.chipBorderColor,
          ),
        ),
      ),
    );
  }
}
