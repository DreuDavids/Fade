import 'dart:ui';

import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

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
                                    height: ksSmallSpacing,
                                  ),
                                  Text(
                                    'Lets Get You a Fresh Cut',
                                    style: subtitleFont,
                                  ),
                                  SizedBox(
                                    height: ksBigSpacing,
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                      filled: false,
                                      hintStyle: inputAltFont,
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
                              child: SvgPicture.asset(
                                logo,
                                height: 115.h,
                                width: 100.w,
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
                                tabs: const [
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
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
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

                    ///The Barbers section
                    AlignedGridView.count(
                      //removing the default padding the gridview has
                      padding: EdgeInsets.zero,
                      crossAxisCount: 2,
                      crossAxisSpacing: 35.w,
                      mainAxisSpacing: 35.h,
                      itemBuilder: (context, index) {
                        return BarberCardWidget();
                      },
                    ),

                    ///Branches section
                    IntrinsicHeight(
                      child: Container(
                        color: Colors.red,
                        height: 100,
                        width: 100,
                        child: Text('data'),
                      ),
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

///
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
            ///Cut Image and favourite button
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    hairCut,
                    height: 150.h,
                    width: double.infinity,
                    fit: BoxFit.fitWidth,
                    alignment: Alignment.center,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.h, right: 6.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: darkBlue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: IconButton(
                        onPressed: () {
                          //Favourite cut logic here
                        },
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ksMediumSpacing,
            ),

            ///hair cut name & price
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
              height: ksMediumSpacing,
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
              height: ksLargeSpacing,
            ),
            const Divider(thickness: 1, color: darkGrey),
            SizedBox(
              height: ksMediumSpacing,
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

///
class BarberCardWidget extends StatelessWidget {
  const BarberCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 285.h,
      width: 156.w,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(30.r),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ///Barber Image and favourite button
            Stack(
              alignment: Alignment.topCenter,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20.r),
                  child: Image.asset(
                    barber1,
                    height: 150.h,
                    width: 140.w,
                    fit: BoxFit.fill,
                    alignment: Alignment.center,
                  ),
                ),
                //favourite icon
                Padding(
                  padding: EdgeInsets.only(top: 6.h, right: 6.w),
                  child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 40.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        color: darkBlue.withOpacity(0.5),
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: IconButton(
                        onPressed: () {
                          //Favourite barber logic here
                        },
                        icon: const Icon(
                          Icons.favorite_border_rounded,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: ksMediumSpacing,
            ),

            ///barber details
            Text(
              'MP The Barber',
              style: inputFont,
            ),
            SizedBox(
              height: ksMediumSpacing,
            ),

            ///Branch
            Text(
              'CBD Urban Cuts',
              style: inputFont.copyWith(color: feintWhite),
            ),
            SizedBox(
              height: ksMediumSpacing,
            ),
            const Divider(thickness: 1, color: darkGrey),

            GestureDetector(
              onTap: () {
                //TODO View barber logic here
              },
              child: Text(
                'VIEW',
                style: buttonFont,
              ),
            ),
            SizedBox(
              height: ksMediumSpacing,
            ),
          ],
        ),
      ),
    );
  }
}
