import 'dart:ui';
import 'package:fade/src/screens/screens.dart';
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
            height: double.infinity,
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
                    Form(
                      child: Column(
                        children: [
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
                        ],
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

                    ///Login with social media
                    Row(
                      children: [
                        const Expanded(
                          child: Divider(
                            color: dividerColour,
                            thickness: 1,
                            endIndent: 10,
                          ),
                        ),
                        Text(
                          'Login with',
                          style: inputFont,
                        ),
                        const Expanded(
                          child: Divider(
                            color: dividerColour,
                            thickness: 1,
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

                            ///Social login icons
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
                      onPressed: () {
                        //Login logic here
                        ///TODO navigate to the home page here
                      },
                      minWidth: double.infinity,
                      height: 40.h,
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
                            //Navigate to the Register page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SignupScreen(),
                              ),
                            );
                          },
                          child: const Text(
                            'Register Now',
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
