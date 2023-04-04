import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:phyfarm_ui/screens/forgot_pw.dart';
import 'sign_up_final.dart';

class LoginFinal extends StatelessWidget {
  const LoginFinal({Key? key}) : super(key: key);

  static String id = 'login_screen';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double cardWidth;

    if (screenWidth < 700) {
      cardWidth = screenWidth * 0.8;
    } else if (screenWidth >= 700 && screenWidth < 750) {
      cardWidth = screenWidth * 0.7;
    } else if (screenWidth >= 750 && screenWidth < 900) {
      cardWidth = screenWidth * 0.6;
    } else {
      cardWidth = screenWidth * 0.3;
    }

    if (screenWidth > 900) {
      return Scaffold(
        backgroundColor: const Color(0xFF2a2f3b),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.9,
              width: cardWidth,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 200.h,

                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/logo.PNG'),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            ' Welcome!',
                            style: TextStyle(
                              fontSize: 20.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            ' For any assistance contact us on',
                            style: TextStyle(
                              fontSize: 15.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          const Icon(
                            Icons.mail,
                            color: Colors.white,
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          const Icon(
                            Icons.phone_android,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: cardWidth,
              margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(
                  Radius.circular(5.w),
                ),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10.w,
                vertical: 10.h,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 30.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            //redirect to signup screen
                            Navigator.pushNamed(context, SignUpFinal.id);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.transparent,
                              shadows: [
                                Shadow(
                                    offset: Offset(0, -15.h), color: Colors.black)
                              ],
                            ),
                          ),
                        ),
                        Text(
                          'Login',
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.transparent,
                            shadows: [
                              Shadow(offset: Offset(0, -15.h), color: Colors.black)
                            ],
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                            decorationColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      margin: EdgeInsets.only(bottom: 3.h),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5.w),
                          topRight: Radius.circular(5.w),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email address',
                            hintStyle: TextStyle(fontSize: 13.sp),
                            prefixIcon: Icon(Icons.email, size: 7.w),
                          ),
                          onChanged: (value) {
                            // Do something with the user input
                          },
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5.w),
                          bottomLeft: Radius.circular(5.w),
                        ),
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          // keyboardType: TextInputType.emailAddress,
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your password',
                            hintStyle: TextStyle(fontSize: 13.sp),
                            prefixIcon: Icon(Icons.lock, size: 7.w),
                          ),
                          onChanged: (value) {
                            // Do something with the user input
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Checkbox(
                              checkColor: Colors.black,
                              value: false,
                              shape: const CircleBorder(),
                              onChanged: (bool? value) {},
                            ),
                            Text(
                              'Remember Me',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            )
                          ],
                        ),

                        InkWell(
                          onTap: (){
                            Navigator.pushNamed(context, ForgotPW.id);
                          },
                          child: Text(
                            'Forgot Password?',
                            style: TextStyle(
                              fontSize: 12.sp,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: Material(
                        color: Colors.grey.shade400,
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            10.w,
                          ),
                        ),
                        elevation: 10.h,
                        child: MaterialButton(
                          onPressed: () {
                            //do something
                          },
                          minWidth: 200.w,
                          height: 40.h,
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'or  ',
                          style: TextStyle(fontSize: 15.sp),
                        ),
                        InkWell(
                          onTap: () {
                            // redirect to Sign Up Screen
                            Navigator.pushNamed(context, SignUpFinal.id);
                          },
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 20.sp,
                                decoration: TextDecoration.underline),
                          ),
                        )
                      ],
                    )
                  ],
                ),

              ),
            ),
          ],
        ),
      );
    } else {
      return Scaffold(
        backgroundColor: const Color(0xFF2a2f3b),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: screenHeight * 0.3,
                width: cardWidth,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 200.h,

                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/images/logo.PNG'),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              ' Welcome!',
                              style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            Text(
                              ' For any assistance contact us on',
                              style: TextStyle(
                                fontSize: 15.sp,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20.h,
                            ),
                            const Icon(
                              Icons.mail,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            const Icon(
                              Icons.phone_android,
                              color: Colors.white,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                width: cardWidth,
                margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.w),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                  vertical: 10.h,
                ),
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(
                        height: 30.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {
                              //redirect to signup screen
                              Navigator.pushNamed(context, SignUpFinal.id);
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                color: Colors.transparent,
                                shadows: [
                                  Shadow(
                                      offset: Offset(0, -15.h), color: Colors.black)
                                ],
                              ),
                            ),
                          ),
                          Text(
                            'Login',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.transparent,
                              shadows: [
                                Shadow(offset: Offset(0, -15.h), color: Colors.black)
                              ],
                              decoration: TextDecoration.underline,
                              decorationThickness: 3,
                              decorationColor: Colors.black,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        margin: EdgeInsets.only(bottom: 3.h),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(5.w),
                            topRight: Radius.circular(5.w),
                          ),
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your email address',
                              hintStyle: TextStyle(fontSize: 13.sp),
                              prefixIcon: Icon(Icons.email, size: 7.w),
                            ),
                            onChanged: (value) {
                              // Do something with the user input
                            },
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5.w),
                            bottomLeft: Radius.circular(5.w),
                          ),
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            // keyboardType: TextInputType.emailAddress,
                            obscureText: true,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your password',
                              hintStyle: TextStyle(fontSize: 13.sp),
                              prefixIcon: Icon(Icons.lock, size: 7.w),
                            ),
                            onChanged: (value) {
                              // Do something with the user input
                            },
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Row(
                        // crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.black,
                                value: false,
                                shape: const CircleBorder(),
                                onChanged: (bool? value) {},
                              ),
                              Text(
                                'Remember Me',
                                style: TextStyle(
                                  fontSize: 12.sp,
                                ),
                              )
                            ],
                          ),

                          InkWell(
                            onTap: (){
                              Navigator.pushNamed(context, ForgotPW.id);
                            },
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(
                                fontSize: 12.sp,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16.h),
                        child: Material(
                          color: Colors.grey.shade400,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              10.w,
                            ),
                          ),
                          elevation: 10.h,
                          child: MaterialButton(
                            onPressed: () {
                              //do something
                            },
                            minWidth: 200.w,
                            height: 40.h,
                            child: Text(
                              'LOGIN',
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'or  ',
                            style: TextStyle(fontSize: 15.sp),
                          ),
                          InkWell(
                            onTap: () {
                              // redirect to Sign Up Screen
                              Navigator.pushNamed(context, SignUpFinal.id);
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  fontSize: 20.sp,
                                  decoration: TextDecoration.underline),
                            ),
                          )
                        ],
                      )
                    ],
                  ),

                ),
              )
            ],
          ),
        ),
      );
    }
  }
}
