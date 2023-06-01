import 'dart:ui';

import 'package:fade/src/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../constants/widgets/widgets.dart';

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
                child: Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.only(left: 15.w, right: 15.w, top: 20.h),
                      //Hero section
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              mainAxisAlignment: MainAxisAlignment.start,
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
                                SizedBox(
                                  height: 30.h,
                                  child: TextField(
                                    decoration: InputDecoration(
                                      filled: false,
                                      labelStyle: inputAltFont,
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
                                ),
                                SizedBox(
                                  height: ksBigSpacing,
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
                    //tab navigation section
                    Expanded(
                      child: Container(
                        width: double.infinity,
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
                              child: Center(
                                child: TabBar(
                                  labelPadding:
                                      EdgeInsets.symmetric(horizontal: 8.w),
                                  unselectedLabelStyle: feintTitleFont,
                                  labelStyle: activeTitleFont,
                                  indicatorColor: yellow,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  isScrollable: true,
                                  tabs: const [
                                    Tab(
                                      text: 'Latest Cuts',
                                    ),
                                    Tab(
                                      text: 'Specialist Barbers',
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
                    ),
                  ],
                ),
              ),
            ),
            //main body section
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w, top: 30.h),
                child: TabBarView(
                  children: [
                    ///Latest cuts section
                    ListView.builder(
                      padding: EdgeInsets.zero,
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
                        return const BarberCardWidget();
                      },
                    ),

                    ///Branches section
                    ListView.builder(
                        padding: EdgeInsets.zero,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(bottom: 40.h),
                            child: const BranchCardWidget(),
                          );
                        }),
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
