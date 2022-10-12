import 'package:coffee_station/UserTypes/User/screen/OnBoardingScreen/widget/on_boarding_buttons.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: size.width,
                    height: size.height / 2.5,
                    child: Image.asset(
                      "assest/images/background2.png",
                      fit: BoxFit.cover,
                      width: size.width,
                      height: size.height / 2.5,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: size.height / 3.3),
                    child: Center(
                      child: Image.asset("assest/images/logo.png"),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.2,
                margin: EdgeInsets.only(
                    bottom: size.height / 17, top: size.height / 17),
                child: Text(
                  "Lorem ipsum dolor sit amet, "
                  "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et",
                  style: TextStyle(fontSize: 15, color: greyColor),
                ),
              ),
              const OnBoardingButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
