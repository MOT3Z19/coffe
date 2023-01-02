import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'controls.dart';

class AddRequests extends StatefulWidget {
  const AddRequests({Key? key}) : super(key: key);

  @override
  _AddRequestsState createState() => _AddRequestsState();
}

class _AddRequestsState extends State<AddRequests> {
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
                      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Controls(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 3.6,
                          ),
                          const Center(
                            child: Text(
                              "طلبات القبول ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          // Icon(
                          //   Icons.view_headline,
                          //   color: Colors.white,
                          //   size: 40,
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "عرض الكل",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                    Text(
                      "لاحقا",
                      style: TextStyle(fontSize: 20, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: size.width / 3.5,
                            height: size.height / 22,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 18, vertical: 10),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "قبول",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 3.5,
                            height: size.height / 22,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 18, vertical: 10),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "رفض",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 4,
                            height: size.height / 10,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(), color: Colors.white),
                            child: const DecoratedBox(
                              decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assest/images/man.jpg"))),
                            ),
                          ),
                          const Text(
                            "المندوب: ايما ستون",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Container(
                            width: size.width / 3.5,
                            height: size.height / 22,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 18, vertical: 10),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "قبول",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          Container(
                            width: size.width / 3.5,
                            height: size.height / 22,
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 18, vertical: 10),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "رفض",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 4,
                            height: size.height / 10,
                            decoration: const ShapeDecoration(
                                shape: CircleBorder(), color: Colors.white),
                            child: const DecoratedBox(
                              decoration: ShapeDecoration(
                                  shape: CircleBorder(),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image:
                                          AssetImage("assest/images/man.jpg"))),
                            ),
                          ),
                          const Text(
                            "المندوب: ايما ستون",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2.5,
                    height: size.height / 22,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "رفض الكل ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 2.5,
                    height: size.height / 22,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: const Center(
                      child: Text(
                        "قبول الكل ",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
