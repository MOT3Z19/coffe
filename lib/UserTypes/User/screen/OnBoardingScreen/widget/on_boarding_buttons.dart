import 'package:coffee_station/UserTypes/User/screen/SignUp/page/sign_up.dart';
import 'package:coffee_station/UserTypes/User/screen/loginScreen/page/login_screen.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../main_tabs.dart';

class OnBoardingButtons extends StatelessWidget {
  const OnBoardingButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          child: Container(
            width: size.width / 1.1,
            height: size.height / 14,
            decoration: BoxDecoration(
              color: secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text(
                "تسجيل الدخول",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUp(),
              ),
            );
          },
          child: Container(
            width: size.width / 1.1,
            height: size.height / 14,
            margin: EdgeInsets.only(top: size.height / 55),
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text(
                "إنشاء حساب جديد",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MainTabs(),
              ),
            );
          },
          child: Container(
            width: size.width / 1.1,
            height: size.height / 14,
            margin: EdgeInsets.only(top: size.height / 55),
            decoration: const BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: const Center(
              child: Text(
                "الدخول كضيف",
                style: TextStyle(color: Colors.white, fontSize: 25),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
