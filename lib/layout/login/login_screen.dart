import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:route_ecommerce_app/shared/components/custom_text_form_field.dart';

import '../../shared/components/custom_button.dart';

class LoginScreen extends StatefulWidget {
  static String routeName = "LoginScreen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController userNameController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    userNameController = TextEditingController();
    passwordController = TextEditingController();
  }


  @override
  void dispose() {
    super.dispose();
    userNameController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: REdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(height: 60.h,),
              Image.asset(
                "assets/images/Group 5.png",
                height: 71.h,
                width: 237.w,
              ),
              SizedBox(height: 86.h,),
              Text(
                "Welcome Back To Route",
                style: Theme.of(context).textTheme.titleMedium,
              ),
              SizedBox(height: 8.h,),
              Text(
                "Please sign in with your mail",
                style: Theme.of(context).textTheme.titleLarge,
              ),
              SizedBox(height:40.h),
              Text(
                "Username",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height:24.h),
              CustomTextFormField(
                  hintText: "enter your name",
                  controller: userNameController,
                  validator: (value){
                    if(value!.isEmpty){
                      return  "Required Field";
                    }
                    return null;
                  },
                  type: TextInputType.name,

              ),
              SizedBox(height: 32.h,),
              Text(
                "Password",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              SizedBox(height:24.h),
              CustomTextFormField(
                hintText: "enter your password",
                controller: passwordController,
                validator: (value){
                  if(value!.isEmpty){
                    return  "Required Field";
                  }else if(value.length<6){
                    return "password shouldn't less than 6";
                  }
                  return null;
                },
                type: TextInputType.visiblePassword,
                isPassword: true,
              ),
              SizedBox(height:16.h),
              InkWell(
                onTap: (){},
                child: Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Forgot password",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400
                    ),

                  ),
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              CustomButton(
                title: "Login",
                onPressed: (){

                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
