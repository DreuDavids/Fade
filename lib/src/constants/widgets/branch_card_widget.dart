import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

///BranchCardWidget
class BranchCardWidget extends StatelessWidget {
  const BranchCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.r),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: Column(
        children: [
          //Branch Image & Name
          Container(
            height: 160.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.r),
              image: const DecorationImage(
                ///set branch image here
                image: AssetImage(barberShop1),
                fit: BoxFit.cover,
                alignment: Alignment.center,
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 35.h,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20.r),
                    bottomRight: Radius.circular(20.r),
                  ),
                  color: primaryColor.withOpacity(0.6),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.r),
                    bottomLeft: Radius.circular(20.r),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
                    child: Center(
                      ///set your branch name here
                      child: Text(
                        'CBD Urban Cuts',
                        style: inputFont,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: ksMediumSpacing,
          ),
          //Operational hours
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hours',
                style: inputFont,
              ),
              //Operational Hours
              Column(
                children: [
                  ///Set your operation time here
                  Text(
                    '(Mon - Fri :0800-1900)hrs',
                    style: inputFont,
                  ),
                  SizedBox(
                    height: ksMediumSpacing,
                  ),

                  ///Set your operation time here
                  Text(
                    '(Sat - Sun :0900-1700)hrs',
                    style: inputFont,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: ksMediumSpacing,
          ),
          const Divider(thickness: 1, color: darkGrey),
          Expanded(
            child: Center(
              child: GestureDetector(
                onTap: () {
                  //Get branch location logic here
                },
                child: Text(
                  'GET LOCATION',
                  style: buttonFont,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
