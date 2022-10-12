import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';

class OrderDetails2 extends StatefulWidget {
  const OrderDetails2({Key? key}) : super(key: key);

  @override
  _OrderDetails2State createState() => _OrderDetails2State();
}

class _OrderDetails2State extends State<OrderDetails2> {
  int _n = 0;
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Center(
                          child: Text(
                            "تفاصيل الطلب ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                        Center(
                          child: Text(
                            " مكتمل ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.width / 20, horizontal: size.height / 50),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: size.width / 2,
                        height: size.width / 1.8,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                        width: size.width / 3.8,
                                        height: size.height / 30,
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: AssetImage(
                                              "assest/images/yellowbackground.png",
                                            ),
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        child: const Center(
                                            child: Text(
                                          " طلب مرة أخرى",
                                          style: TextStyle(color: Colors.white),
                                        ))),
                                  ],
                                ),
                                const Text(
                                  "120#",
                                  style: TextStyle(fontSize: 20),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Container(
                                  width: size.width / 4,
                                  height: size.height / 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              if (_n != 0) _n--;
                                            });
                                          },
                                          child: const Text(" - ",
                                              style:
                                                  TextStyle(fontSize: 20.0))),
                                      Text('$_n',
                                          style:
                                              const TextStyle(fontSize: 20.0)),
                                      InkWell(
                                          onTap: () {
                                            setState(() {
                                              _n++;
                                            });
                                          },
                                          child: const Text(" + ",
                                              style:
                                                  TextStyle(fontSize: 20.0))),
                                    ],
                                  ),
                                ),
                                const Text(
                                  " الكمية",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text("التفاصيل"),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "سكر",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "توفي",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "كريمة",
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            const Text("التكلفة الاجمالية : ١٨٠ ريال"),
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Stack(
                            children: [
                              Image.asset("assest/images/coffee4.png"),
                            ],
                          ),
                          const Text(
                            "كوفي",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "متجر زارا",
                                    style: TextStyle(
                                        color: secondaryColor, fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  const Text(
                                    "٧ ريال",
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const SizedBox(
                                    width: 6,
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: size.width / 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "عنوان المرسل له",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: size.width / 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "  حائل شارع الملك خالد",
                      style: TextStyle(fontSize: 15, color: brownColor),
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: brownColor,
                      size: 20,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
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
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 10,
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
                      style: TextStyle(fontSize: 18, color: brownColor),
                    ),
                  ],
                ),
              ),
              DottedLine(),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " ٨ ريال ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "  تكلفة الطلب  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " ٨ ريال ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "  تكلفة التوصيل  ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " ٨ ريال ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "   الخصم  ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              Divider(),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 26, vertical: size.width / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " ٨ ريال ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                    Text(
                      "   المجموع  ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  //  showDialog2();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تقييم",
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
