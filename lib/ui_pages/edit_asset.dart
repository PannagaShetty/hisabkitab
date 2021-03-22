import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hisab_kitab/utility_components/textfield_decoration.dart';
import 'package:hisab_kitab/utility_components/colors.dart';

class EditAsset extends StatefulWidget {
  @override
  _EditAssetState createState() => _EditAssetState();
}

class _EditAssetState extends State<EditAsset> {
  TextEditingController assetsWorthController = new TextEditingController();
  TextEditingController boughtController = new TextEditingController();
  TextEditingController howController = new TextEditingController();
  TextEditingController descriptionController = new TextEditingController();
  TextEditingController paymentMobileNumberController =
      new TextEditingController();
  TextEditingController paymentNameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: colors.assetsBg,
        child: Column(
          children: [
            SafeArea(
              child: Column(
                children: [
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Icon(
                            Icons.arrow_back_ios,
                            color: colors.white,
                          ),
                        ),
                      ),
                      Text(
                        'Edit asset',
                        style: TextStyle(fontSize: 18, color: colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 10.0),
                        child: Icon(
                          Icons.close,
                          color: colors.white,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 35.0,
                  ),
                ],
              ),
            ),
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                color: colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
              ),
              padding: EdgeInsets.only(left: 40, right: 40, top: 10),
              child: ListView(
                shrinkWrap: true,
                physics: ScrollPhysics(),
                children: [
                  Text(
                    'Assets worth*',
                    style: TextStyle(fontSize: 12, color: colors.hintTextColor),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    controller: assetsWorthController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Your text',
                      hintStyle:
                          TextStyle(fontSize: 14, color: colors.hintTextColor),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'What did you buy*',
                    style: TextStyle(fontSize: 12, color: colors.hintTextColor),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    controller: boughtController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Your text',
                      hintStyle:
                          TextStyle(fontSize: 14, color: colors.hintTextColor),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'How did you buy*',
                    style: TextStyle(fontSize: 12, color: colors.hintTextColor),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    controller: howController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Your text',
                      hintStyle:
                          TextStyle(fontSize: 14, color: colors.hintTextColor),
                    ),
                  ),
                  SizedBox(height: 20.0),

                  //saddfsef
                  Text(
                    'Friend’s mobile number *',
                    style: TextStyle(
                      fontSize: 12,
                      color: colors.hintTextColor,
                    ),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    controller: paymentMobileNumberController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Mobile Number',
                      suffixIcon: InkWell(
                        onTap: () {
                          print('taped');
                        },
                        child: SvgPicture.asset('asset/svg/Group 3@1.5x.svg'),
                      ),
                      hintStyle: TextStyle(
                        fontSize: 14,
                        color: colors.hintTextColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Friend’s nick name (optional)',
                    style: TextStyle(fontSize: 12, color: colors.hintTextColor),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    controller: paymentNameController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Your text',
                      hintStyle:
                          TextStyle(fontSize: 14, color: colors.hintTextColor),
                    ),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Add description (Optional)',
                    style: TextStyle(fontSize: 12, color: colors.hintTextColor),
                  ),
                  SizedBox(height: 6.0),
                  TextField(
                    minLines: 2,
                    maxLines: 5,
                    controller: descriptionController,
                    decoration: kInputDecoration.copyWith(
                      hintText: 'Description  ',
                      hintStyle:
                          TextStyle(fontSize: 14, color: colors.hintTextColor),
                    ),
                  ),
                  SizedBox(height: 15.0),
                  InkWell(
                    onTap: () {
                      setState(() {});
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0)),
                      child: DottedBorder(
                        color: colors.selectedContainer,
                        dashPattern: [8, 4],
                        borderType: BorderType.RRect,
                        radius: Radius.circular(12),
                        padding: EdgeInsets.symmetric(vertical: 18.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                  'asset/svg/photo-camera@1.5x.svg'),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text(
                                'Upload document',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: colors.selectedContainer),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SvgPicture.asset('asset/svg/Group 11@1.5x.svg'),
                        SizedBox(
                          width: 10.0,
                        ),
                        Expanded(
                          child: Container(
                            padding: EdgeInsets.only(bottom: 10.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(
                                        color: colors.loadingProgressbar,
                                        width: 2))),
                            child: Row(
                              children: [
                                Text(
                                  'File name 123.png',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: colors.hintTextColor),
                                ),
                                Spacer(),
                                Text(
                                  '100%',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: colors.assetTextcolor),
                                ),
                              ],
                            ),
                          ),
                        ),
                        IconButton(
                            icon: Icon(
                              Icons.cancel_sharp,
                              color: colors.cancelGreyColor,
                            ),
                            onPressed: () {})
                      ],
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
  }
}
