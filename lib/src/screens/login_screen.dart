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
                      height: ksSmallSpacing,
                    ),
                    Text(
                      'Welcome Back To Urban Cuts',
                      style: subtitleFont,
                    ),
                    SizedBox(
                      height: ksBigSpacing,
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
                            height: ksSmallSpacing,
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
                      height: ksMediumSpacing,
                    ),
                    TextButton(
                      onPressed: () {
                        //navigate to the forgot password page
                      },
                      child: const Text('Forgot Password?'),
                    ),
                    SizedBox(
                      height: ksBigSpacing,
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
                          style: inputAltFont,
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
                      height: ksBigSpacing,
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
                                  iconSize: ksBigSpacing,
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
                      onPressed: () {
                        //Login logic here
                        ///TODO navigate to the home page here
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const HomeScreen(),
                          ),
                        );
                      },
                      minWidth: double.infinity,
                      height: 50.h,
                      color: darkBlue,
                      child: Text(
                        'LOGIN',
                        style: inputAltFont,
                      ),
                    ),
                    SizedBox(
                      height: ksMediumSpacing,
                    ),
                    Row(
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: inputAltFont,
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
                          child: Text(
                            'Register Now',
                            style: textButtonFont.copyWith(fontSize: 16.sp),
                          ),
                        )
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
