import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'reset_link.dart';
class ForgotPW extends StatelessWidget {
  const ForgotPW({Key? key}) : super(key: key);

  static String id = 'forgot_pw_screen';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double cardWidth;

    late String email;

    if (screenWidth < 700) {
      cardWidth = screenWidth * 0.8;
    } else if (screenWidth >= 700 && screenWidth < 750) {
      cardWidth = screenWidth * 0.7;
    } else if (screenWidth >= 750 && screenWidth < 900) {
      cardWidth = screenWidth * 0.6;
    } else {
      cardWidth = screenWidth * 0.3;
    }

    if(screenWidth > 900){
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
              height: MediaQuery.of(context).size.height * 0.4,
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
                    SizedBox(height: 30.h,),
                    Center(
                      child: Text(
                        'Forgot Password?',
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
                    ),
                    SizedBox(height: 30.h,),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      margin: EdgeInsets.only(bottom: 3.h),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Enter your email',
                            hintStyle: TextStyle(fontSize: 13.sp),
                            prefixIcon: Icon(
                              Icons.mail,
                              size: 7.w,
                            ),
                          ),
                          onChanged: (value) {
                            // Do something with the user input
                            email = value;
                          },
                        ),
                      ),
                    ),
                    SizedBox(height: 30.h,),
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
                            Navigator.pushNamed(context, ResetLink.id);
                          },
                          minWidth: 200.w,
                          height: 40.h,
                          child: Text(
                            'SUBMIT',
                            style: TextStyle(
                                fontSize: 17.sp, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      );
    }
    else{
      return Scaffold(
        backgroundColor: const Color(0xFF2a2f3b),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
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
                height: MediaQuery.of(context).size.height * 0.3,
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
                      SizedBox(height: 30.h,),
                      Center(
                        child: Text(
                          'Forgot Password?',
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
                      ),
                      SizedBox(height: 30.h,),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 5.w),
                        margin: EdgeInsets.only(bottom: 3.h),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: TextField(
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Enter your email',
                              hintStyle: TextStyle(fontSize: 13.sp),
                              prefixIcon: Icon(
                                Icons.mail,
                                size: 7.w,
                              ),
                            ),
                            onChanged: (value) {
                              // Do something with the user input
                              email = value;
                            },
                          ),
                        ),
                      ),
                      SizedBox(height: 30.h,),
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
                              Navigator.pushNamed(context, ResetLink.id);
                            },
                            minWidth: 200.w,
                            height: 40.h,
                            child: Text(
                              'SUBMIT',
                              style: TextStyle(
                                  fontSize: 17.sp, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
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
