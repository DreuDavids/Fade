import 'dart:ui';
import 'package:fade/src/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            loginBackgroundImage,
            fit: BoxFit.fitHeight,
            height: double.infinity,
            alignment: Alignment.centerRight,
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            color: blurOverlayColor,
            child: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 40.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'REGISTER',
                      style: titleFont,
                    ),
                    SizedBox(
                      height: ksSmallSpacing,
                    ),
                    Text(
                      'Welcome To Urban Cuts',
                      style: subtitleFont,
                    ),
                    SizedBox(
                      height: ksBigSpacing,
                    ),

                    ///Form
                    Form(
                      child: Column(
                        children: [
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Email'),
                          ),
                          SizedBox(
                            height: ksSmallSpacing,
                          ),
                          TextFormField(
                            decoration:
                                const InputDecoration(hintText: 'Password'),
                            obscureText: true,
                          ),
                          SizedBox(
                            height: ksSmallSpacing,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: 'Confirm Password'),
                            obscureText: true,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ksBigSpacing,
                    ),

                    ///Signup With
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                            color: dividerColour,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          'Signup with',
                          style: inputAltFont,
                        ),
                        const Expanded(
                          child: Divider(
                            thickness: 1,
                            color: dividerColour,
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: ksMediumSpacing * 2,
                    ),
                    Center(
                      child: Container(
                        height: 56.h,
                        width: 233.w,
                        decoration: BoxDecoration(
                          color: socialIconsBlur,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.r),
                          child: BackdropFilter(
                            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),

                            ///Social Signup icons
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ///Google Signup
                                IconButton(
                                  onPressed: () {
                                    //Implement Google Signup here
                                  },
                                  icon: const Icon(Icons.g_mobiledata_rounded,
                                      color: darkBlue),
                                  iconSize: 40.h,
                                ),

                                ///Facebook login
                                IconButton(
                                  onPressed: () {
                                    //Implement Facebook Signup here
                                  },
                                  icon: const Icon(Icons.facebook,
                                      color: darkBlue),
                                  iconSize: 40.h,
                                ),

                                ///Apple login
                                IconButton(
                                  onPressed: () {
                                    //Implement Apple Signup here
                                  },
                                  icon: const Icon(Icons.apple_rounded,
                                      color: darkBlue),
                                  iconSize: 40.h,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ksBigSpacing,
                    ),
                    MaterialButton(
                      color: darkBlue,
                      height: 40.h,
                      minWidth: double.infinity,
                      onPressed: () {
                        //Implement Register Here
                        //TODO navigate to the home page
                      },
                      child: Text(
                        'REGISTER',
                        style: inputAltFont,
                      ),
                    ),
                    SizedBox(
                      height: ksMediumSpacing,
                    ),
                    Row(
                      children: [
                        Text(
                          'Already have an account?',
                          style: inputAltFont,
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO navigate to the login page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Login',
                            style: textButtonFont.copyWith(fontSize: 16.sp),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
