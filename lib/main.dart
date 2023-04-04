import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'screens/forgot_pw.dart';
import 'screens/login.dart';
import 'screens/login_final.dart';
import 'screens/reset_link.dart';
import 'screens/sign_up.dart';
import 'screens/sign_up_final.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Authentication',
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          initialRoute: LoginFinal.id,
          routes: {
            SignUp.id : (context)=> const SignUp(),
            Login.id : (context)=> Login(),
            SignUpFinal.id : (context) => SignUpFinal(),
            LoginFinal.id : (context) => LoginFinal(),
            ForgotPW.id : (context) => ForgotPW(),
            ResetLink.id : (context) => ResetLink()
          },
        );

      },


    );
  }
}

