import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class AssetSuccessful extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: colors.assetsBg,
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
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
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('asset/svg/checked@1.5x.svg'),
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      'Successfully\nadded',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: colors.assetViewContainerColor,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
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
            ),
          ],
        ),
      ),
    );
  }
}
