import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class OrderDetails2 extends StatefulWidget {
  const OrderDetails2({Key? key}) : super(key: key);

  @override
  _OrderDetails2State createState() => _OrderDetails2State();
}

class _OrderDetails2State extends State<OrderDetails2> {
  bool value = false;
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
                              Navigator.pop(context);
                            },
                            child: const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "   تفاصيل الطلب ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "   مكتمل  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.only(right: 220),
                width: size.width / 3.5,
                height: size.height / 15,
                decoration: BoxDecoration(
                  // color: greyColor2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      "اخفاء الطلب ",
                      style: TextStyle(fontSize: 15),
                    ),
                    Checkbox(
                      value: value,
                      onChanged: (valuee) {
                        setState(() {
                          value = valuee!;
                        });
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: size.width,
                height: size.height / 7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: size.width / 1.3,
                      height: size.height / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "كوفي",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "١٠ ريال ",
                                      style: TextStyle(
                                          fontSize: 16, color: secondaryColor),
                                    ),
                                    const Text(
                                      "ميزانية التوصيل ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Image.asset("assest/images/coffee4.png"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 1.3,
                      height: size.height / 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                const Text(
                                  "كوفي",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "١٠ ريال ",
                                      style: TextStyle(
                                          fontSize: 16, color: secondaryColor),
                                    ),
                                    const Text(
                                      "ميزانية التوصيل ",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Image.asset("assest/images/coffee4.png"),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "عنوان المرسل له",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    // Text(
                    //   "  اسم العميل",
                    //   style:
                    //       TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      children: [
                        Text(
                          "  حائل شارع الملك خالد",
                          style: TextStyle(fontSize: 15, color: brownColor),
                          textAlign: TextAlign.right,
                        ),
                        Icon(
                          Icons.location_on_rounded,
                          color: brownColor,
                          size: 20,
                        ),
                      ],
                    ),
                    // Text(
                    //   "  احمد محمد",
                    //   style: TextStyle(fontSize: 15, color: brownColor),
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " المنطقة ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " المدينة ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " حائل ",
                      style: TextStyle(fontSize: 18, color: brownColor),
                    ),
                    Text(
                      " حائل ",
                      style: TextStyle(fontSize: 18, color: brownColor),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " التاريخ ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      " الوقت ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ١٨/٧/١٩٩٨ ",
                      style: TextStyle(fontSize: 18, color: brownColor),
                    ),
                    Text(
                      " ١٢:٠٠ ",
                      textAlign: TextAlign.right,
                      style: TextStyle(fontSize: 18, color: brownColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              DottedLine(),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "١٠ ريال ",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                    const Text(
                      "تكلفة الطلب",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "١٠ ريال ",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                    const Text(
                      "تكلفة التوصيل",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "١٠ ريال ",
                      style: TextStyle(fontSize: 20, color: secondaryColor),
                    ),
                    const Text(
                      "الخصم ",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              DottedLine(),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "١٠ ريال ",
                      style: TextStyle(color: secondaryColor, fontSize: 20),
                    ),
                    const Text(
                      " المجموع",
                      style: TextStyle(fontSize: 20),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: const Text(
                  "التقييم ",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
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
                      Container(
                        margin: EdgeInsets.only(top: size.height / 58),
                        child: Center(
                          child: RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 30,
                            // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
