import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ResetLink extends StatelessWidget {
  const ResetLink({Key? key}) : super(key: key);

  static String id = 'reset_link_screen';

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
                    SizedBox(
                      height: 30.h,
                    ),
                    Icon(
                      CupertinoIcons.envelope_open_fill,
                      size: 30.h,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Center(
                      child: Text(
                        'A reset link has been sent to your mail',
                        style:
                        TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
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
                      SizedBox(
                        height: 30.h,
                      ),
                      Icon(
                        CupertinoIcons.envelope_open_fill,
                        size: 30.h,
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Center(
                        child: Text(
                          'A reset link has been sent to your mail',
                          style:
                          TextStyle(fontSize: 13.sp, fontWeight: FontWeight.bold),
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
