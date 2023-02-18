import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../constants/constants.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Image.asset(
            loginBackgroundImage,
            alignment: Alignment.centerRight,
            fit: BoxFit.fitHeight,
            width: 375.w,
            height: 812.h,
          ),
          Align(
            child: Container(
              decoration: BoxDecoration(color: blurOverlayColor),
            ),
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 90.h,
                    ),
                    Text(
                      'LOGIN',
                      style: titleFont,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Text(
                      'Welcome Back To Urban Cuts',
                      style: subtitleFont,
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: 'Email',
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        hintText: 'Password',
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    TextButton(
                      onPressed: () {
                        //navigate to the forgot password page
                      },
                      child: const Text('Forgot Password?'),
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            color: dividerColour,
                            thickness: 1.h,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          'Login with',
                          style: inputFont,
                        ),
                        Expanded(
                          child: Divider(
                            color: dividerColour,
                            thickness: 1.h,
                            indent: 10,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                ///Google login
                                IconButton(
                                  onPressed: () {
                                    //Implement Google login here
                                  },
                                  icon: const Icon(Icons.g_mobiledata_rounded,
                                      color: darkBlue),
                                  iconSize: 40.h,
                                ),

                                ///Facebook login
                                IconButton(
                                  onPressed: () {
                                    //Implement Facebook login here
                                  },
                                  icon: const Icon(Icons.facebook,
                                      color: darkBlue),
                                  iconSize: 40.h,
                                ),

                                ///Apple login
                                IconButton(
                                  onPressed: () {
                                    //Implement Apple login here
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
                      height: 40.h,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      minWidth: double.infinity,
                      height: 50.h,
                      color: darkBlue,
                      child: Text(
                        'LOGIN',
                        style: inputFont,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: inputFont,
                        ),
                        TextButton(
                          onPressed: () {
                            //TODO navigate to register page
                            //Navigate to the Register page
                          },
                          child: const Text('Register Now'),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
