import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../constants.dart';

///CutsCardWidget
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

            Expanded(
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    //Request cut logic here
                  },
                  child: Text(
                    'REQUEST CUT',
                    style: buttonFont,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
