import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyTheme{
  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Color(0xff004182),
    textTheme: TextTheme(
      titleSmall: TextStyle(
        fontSize: 18.sp,
        color: Colors.black.withOpacity(0.7),
        fontWeight: FontWeight.w300
      ),
      titleMedium: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 24.sp
      ),
      titleLarge: TextStyle(
          fontWeight: FontWeight.w300,
          color: Colors.white,
          fontSize: 16.sp
      ),
      bodySmall: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 18.sp
      )
    )
  );
}