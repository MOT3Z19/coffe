import 'dart:core';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  final String? title;
  final String? type1;
  final String? type2;
  final String? type3;
  const NavBar({
    Key? key,
    required this.title,
    required this.type1,
    required this.type2,
    required this.type3,
  }) : super(key: key);

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height / 5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assest/images/rectangle.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: size.width / 40),
              //  margin: EdgeInsets.symmetric(horizontal: size.width / 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Icon(
                        // added by vp
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.white,
                        size: 40,
                      ),
                      // Icon(
                      //   Icons.arrow_back_ios,
                      //   color: Colors.white,
                      //   size: 30,
                      // ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 40,
                      ),
                      SizedBox(
                          //added by vp
                          //width: size.width / 2.7, // vp should be var
                          width: 40),
                    ],
                  ),
                  Text(
                    widget.title!,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  const SizedBox(
                      //added by vp
                      //width: size.width / 2.7, // vp should be var
                      width: 30),
                  const Icon(
                    Icons.view_headline,
                    color: Colors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
                top: size.height / (6.5 - 1.5) -
                    size.height / 19 / 2), // add size by vp
            //margin: EdgeInsets.only(top: size.height / 6.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: size.width / 4, // vp changed from 3.5 to 4
                  // width: size.width / 3.5,
                  height: size.height / 19,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      widget.type3!,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 4, // vp changed from 3.5 to 4
                  //width: size.width / 3.5,
                  height: size.height / 19,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      widget.type2!,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                Container(
                  width: size.width / 4, // vp changed from 3.5 to 4
                  // width: size.width / 3.5,
                  height: size.height / 19,
                  decoration: BoxDecoration(
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.grey,
                        blurRadius: 25.0, // soften the shadow
                        spreadRadius: 5.0, //extend the shadow
                        offset: Offset(
                          1.0, // Move to right 10  horizontally
                          1.0, // Move to bottom 10 Vertically
                        ),
                      ),
                    ],
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: Text(
                      widget.type1!,
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
////////////////////////////////////////////////////////////////////////////////
