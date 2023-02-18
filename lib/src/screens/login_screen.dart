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
                        label: Text(
                          'Email',
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        label: Text(
                          'Password',
                        ),
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
                      //crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.ideographic,
                      children: [
                        Expanded(
                          child: Divider(
                            color: dividerColour,
                            thickness: 1.h,
                            endIndent: 5,
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
                            indent: 5,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40.h,
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 50.h,
                      child: Text('LOGIN'),
                      color: darkBlue,
                    )
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
