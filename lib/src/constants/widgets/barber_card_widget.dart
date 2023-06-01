import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

///BarberCardWidget
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

            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    //TODO View barber logic here
                  },
                  child: Text(
                    'VIEW',
                    style: buttonFont,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
