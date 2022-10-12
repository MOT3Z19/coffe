import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'OnBoardingScreen/page/on_boarding_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
            children: [
              SizedBox(
                  width: size.width / 1,
                  height: size.height / 1.8,
                  child: Image.asset("assest/images/splash_image.png")),
              const Center(
                  child: Text(
                "سارع بالطلب",
                style: TextStyle(fontSize: 30),
              )),
              Container(
                margin: EdgeInsets.only(
                    top: size.height / 25, bottom: size.height / 20),
                width: size.width / 1.2,
                child: const Text("Lorem ipsum dolor sit amet, "
                    "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et"),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OnBoardingScreen(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 14,
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تخطي",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
