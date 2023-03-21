import 'dart:ui';

import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: darkBackground,
        body: Column(
          children: [
            Container(
              height: 300.h,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(homeBackgroundImage),
                  fit: BoxFit.cover,
                  colorFilter:
                      ColorFilter.mode(blurOverlayColor, BlendMode.srcOver),
                ),
              ),
              child: SafeArea(
                child: Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding:
                            EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Expanded(
                              flex: 3,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    'HEY, David',
                                    style: greetingFont,
                                  ),
                                  SizedBox(
                                    height: 5.h,
                                  ),
                                  Text(
                                    'Lets Get You a Fresh Cut',
                                    style: subtitleFont,
                                  ),
                                  SizedBox(
                                    height: 40.h,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintStyle: inputFont.copyWith(
                                          color: Colors.white),
                                      contentPadding:
                                          EdgeInsets.symmetric(vertical: 0.h),
                                      hintText: 'looking for a barber?',
                                      border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.r),
                                      ),
                                      prefixIcon: const Icon(
                                        Icons.search_rounded,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Image.asset(
                                logo,
                                height: 115.h,
                                width: 100.w,
                                fit: BoxFit.fitHeight,
                                //color: Colors.white,
                                //colorBlendMode: BlendMode.dstOver,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 55.h,
                        decoration: BoxDecoration(
                          color: titleBlurOverlayColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r),
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20.r),
                            topRight: Radius.circular(20.r),
                          ),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 15.w),
                              child: TabBar(
                                labelPadding:
                                    EdgeInsets.symmetric(horizontal: 5.w),
                                unselectedLabelStyle: feintTitleFont,
                                labelStyle: activeTitleFont,
                                indicatorColor: yellow,
                                indicatorSize: TabBarIndicatorSize.label,
                                tabs: [
                                  Tab(
                                    text: 'Latest Cuts',
                                  ),
                                  Tab(
                                    text: 'The Barbers',
                                  ),
                                  Tab(
                                    text: 'Branches',
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 30.h),
                child: TabBarView(
                  children: [
                    ///Latest cuts section
                    ListView.builder(
                      padding: const EdgeInsets.all(0),
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.only(bottom: 40.h),
                          child: const CutsCardWidget(),
                        );
                      },
                    ),
                    Placeholder(
                      color: Colors.blue,
                    ),
                    Placeholder(
                      color: Colors.red,
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

class CutsCardWidget extends StatelessWidget {
  const CutsCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30.r),
      ),
      height: 310.h,
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //TODO add the favourite button
            Image.asset(
              hairCut,
              height: 150.h,
              width: 320.w,
              fit: BoxFit.fitWidth,
              alignment: Alignment.center,
            ),
            SizedBox(
              height: 10.h,
            ),

            ///hairtcut name & price
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///haircut name
                Text(
                  'Platinum Fade',
                  style: inputFont,
                ),

                ///Haircut Cost
                Text(
                  'BWP 350.00',
                  style: inputFont,
                ),
              ],
            ),
            SizedBox(
              height: 10.h,
            ),

            ///Specialized by
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Specialized bv
                Text(
                  'Specialized By',
                  style: inputFont.copyWith(color: feintWhite),
                ),

                ///Barber
                Text(
                  'Mp Tha Barber',
                  style: inputFont.copyWith(color: feintWhite),
                ),
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            const Divider(thickness: 1, color: dividerColour),
            SizedBox(
              height: 10.h,
            ),
            GestureDetector(
              onTap: () {
                //Request cut logic here
              },
              child: Text(
                'REQUEST CUT',
                style: buttonFont,
              ),
            )
          ],
        ),
      ),
    );
  }
}
