import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class ClientDetails extends StatefulWidget {
  const ClientDetails({Key? key}) : super(key: key);

  @override
  _ClientDetailsState createState() => _ClientDetailsState();
}

class _ClientDetailsState extends State<ClientDetails> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        resizeToAvoidBottomInset: false,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: DeliverySideDrawer(),
        ),
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
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const Center(
                            child: Text(
                              "تفاصيل العميل",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: size.height / 30,
                  ),
                  Stack(
                    alignment: Alignment.topCenter,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(size.height / 50),
                        child: SizedBox(
                          width: size.width / 1.1,
                          height: size.height / 3,
                          child: Card(
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 80,
                                ),
                                const Text(
                                  "ايما ستون  ",
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                  ],
                                ),
                                const Divider(
                                  thickness: 1.0,
                                ),
                                IntrinsicHeight(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Column(
                                        children: const [
                                          Text(
                                            "9999",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            "عدد الطلبات",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                      const VerticalDivider(
                                        //color: Colors.black,
                                        thickness: 1,
                                      ),
                                      Column(
                                        children: const [
                                          Text(
                                            "9999",
                                            style: TextStyle(
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            " سنوات",
                                            style: TextStyle(fontSize: 18),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
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
                                  image: AssetImage("assest/images/man.jpg"))),
                        ),
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width / 1.1,
                height: size.height / 5,
                child: Card(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "00966505926024",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "omarmdoughan@gamil.com",
                        style: TextStyle(fontSize: 18),
                      ),
                      Text(
                        "English and Arabic",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "تقييمات المناديب",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Box(context),
              Box(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width / 1.1,
      height: size.height / 3.5,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assest/images/man.jpg"),
              maxRadius: 30,
            ),
            const Center(
              child: Text(
                " ايما ستون ",
                style: TextStyle(fontSize: 20),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amber,
                  size: 15,
                ),
              ],
            ),
            Container(
              width: size.width / 1.3,
              height: size.height / 14,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: greyColor2,
              ),
              child: const Center(
                child: Text(
                  " قائد مركبة مميز وذو خبرة أنصح به ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
