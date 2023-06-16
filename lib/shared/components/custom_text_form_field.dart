import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextFormField extends StatelessWidget {
  String hintText;
  bool isPassword;
  TextEditingController controller;
  String? Function(String?)? validator;
  TextInputType type;
  CustomTextFormField({
   required this.hintText,
    this.isPassword = false,
    required this.controller,
    required this.validator,
    required this.type
});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: type,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15.r)
        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r)
        ),
        fillColor: Colors.white,
        filled: true,
        hintStyle:Theme.of(context).textTheme.titleSmall,
        hintText: hintText,
        suffixIcon: isPassword?Padding(
          padding: REdgeInsets.only(right: 10),
          child: SvgPicture.asset(
              "assets/images/Eye.svg",
              height: 24.h,
              width: 24.w,
              colorFilter: ColorFilter.mode(Color(0xff808080), BlendMode.srcIn),
          ),
        ):null,
        suffixIconConstraints: BoxConstraints()
      ),
      style: Theme.of(context).textTheme.titleSmall?.copyWith(
        color: Colors.black
      ),
      controller: controller,
      validator: validator,
      obscureText: isPassword,
    );
  }
}
