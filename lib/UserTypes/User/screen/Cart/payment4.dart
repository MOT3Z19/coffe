import 'dart:ui';

import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class Payment4 extends StatefulWidget {
  const Payment4({Key? key}) : super(key: key);

  @override
  _Payment4State createState() => _Payment4State();
}

class _Payment4State extends State<Payment4> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _n = 0;

  bool checkedValue = false;
  bool checkedValue2 = false;
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
          child: SideDrawer(),
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

                              SizedBox(
                                  //added by vp
                                  //width: size.width / 2.7, // vp should be var
                                  width: 40),
                            ],
                          ),
                          const Text(
                            "  الدفع",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                              //added by vp
                              //width: size.width / 2.7, // vp should be var
                              width: 30),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),

              Container(
                width: size.width,
                height: size.height / 3.6,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      width: size.width,
                      height: size.height / 4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size.width / 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "120#",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: size.width / 4,
                                            height: size.height / 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                                Text('$_n',
                                                    style: const TextStyle(
                                                        fontSize: 20.0)),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _n++;
                                                      });
                                                    },
                                                    child: const Text(" + ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
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
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "تعديل التفاصيل",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "  سكر،  توفي،   حليب",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: size.width / 5,
                                            height: size.height / 35,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ": كود الخصم",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "أضف ملاحظاتك عالطلب ",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                            "assest/images/coffee4.png"),
                                        Row(
                                          children: [
                                            Container(
                                                width: size.width / 4,
                                                height: size.height / 30,
                                                decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      "assest/images/yellowbackground.png",
                                                    ),
                                                    fit: BoxFit.fill,
                                                  ),
                                                ),
                                                child: Row(
                                                  children: const [
                                                    Icon(
                                                      Icons
                                                          .local_fire_department,
                                                      color: Colors.white,
                                                    ),
                                                    Center(
                                                        child: Text(
                                                      "خصم 10%",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    const Text("كوفي"),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              width: size.width / 10,
                                              height: size.height / 30,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    "assest/images/leaf2.png"),
                                              )),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.favorite_border,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              "متجر زارا",
                                              style: TextStyle(
                                                  color: secondaryColor,
                                                  fontSize: 12),
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
                                            Container(
                                              width: size.width / 10,
                                              height: size.height / 30,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                image: AssetImage(
                                                    "assest/images/leaf.png"),
                                              )),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.shopping_cart_outlined,
                                                  color: Colors.white,
                                                ),
                                              ),
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
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      width: size.width,
                      height: size.height / 4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size.width / 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "120#",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: size.width / 4,
                                            height: size.height / 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                                Text('$_n',
                                                    style: const TextStyle(
                                                        fontSize: 20.0)),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _n++;
                                                      });
                                                    },
                                                    child: const Text(" + ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
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
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "تعديل التفاصيل",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "  سكر،  توفي،   حليب",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: size.width / 5,
                                            height: size.height / 35,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ": كود الخصم",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "أضف ملاحظاتك عالطلب ",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // width: size.width / 2,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                              "assest/images/coffee4.png"),
                                          Row(
                                            children: [
                                              Container(
                                                  width: size.width / 4,
                                                  height: size.height / 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assest/images/yellowbackground.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons
                                                            .local_fire_department,
                                                        color: Colors.white,
                                                      ),
                                                      Center(
                                                          child: Text(
                                                        "خصم 10%",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text("كوفي"),
                                      Row(
                                        children: [
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                      "assest/images/leaf2.png"),
                                                  Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 3),
                                                    child: const Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "متجر زارا",
                                                style: TextStyle(
                                                    color: secondaryColor,
                                                    fontSize: 12),
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
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                      "assest/images/leaf.png"),
                                                  Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 3),
                                                    child: const Icon(
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      width: size.width,
                      height: size.height / 4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size.width / 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "120#",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: size.width / 4,
                                            height: size.height / 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
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
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                                Text('$_n',
                                                    style: const TextStyle(
                                                        fontSize: 20.0)),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _n++;
                                                      });
                                                    },
                                                    child: const Text(" + ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
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
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Text(
                                              "تعديل التفاصيل",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "  سكر،  توفي،   حليب",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: size.width / 5,
                                            height: size.height / 35,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 20,
                                            ),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ": كود الخصم",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            Text(
                                              "أضف ملاحظاتك عالطلب ",
                                              style: TextStyle(
                                                  color: secondaryColor),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // width: size.width / 2,
                                  child: Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                              "assest/images/coffee4.png"),
                                          Row(
                                            children: [
                                              Container(
                                                  width: size.width / 4,
                                                  height: size.height / 30,
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                      image: AssetImage(
                                                        "assest/images/yellowbackground.png",
                                                      ),
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                  child: Row(
                                                    children: const [
                                                      Icon(
                                                        Icons
                                                            .local_fire_department,
                                                        color: Colors.white,
                                                      ),
                                                      Center(
                                                          child: Text(
                                                        "خصم 10%",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.white),
                                                      )),
                                                    ],
                                                  )),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Text("كوفي"),
                                      Row(
                                        children: [
                                          Row(
                                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                      "assest/images/leaf2.png"),
                                                  Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 3),
                                                    child: const Icon(
                                                      Icons.favorite_border,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Text(
                                                "متجر زارا",
                                                style: TextStyle(
                                                    color: secondaryColor,
                                                    fontSize: 12),
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
                                              Stack(
                                                children: [
                                                  Image.asset(
                                                      "assest/images/leaf.png"),
                                                  Container(
                                                    margin: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 3,
                                                        horizontal: 3),
                                                    child: const Icon(
                                                      Icons
                                                          .shopping_cart_outlined,
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2,
                    height: size.height / 20,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "نوعية التوصيل",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2,
                    height: size.height / 20,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " أدخل كود الخصم",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2,
                    height: size.height / 20,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 10),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " أضف وقت التسليم",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const Divider(
                thickness: 1.0,
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "طريقة الدفع",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 130,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text("الكتروني "), //    <-- label
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 120,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text(" كاش"), //    <-- label
                      value: checkedValue2,
                      onChanged: (value) {
                        setState(() {
                          checkedValue2 = value!;
                        });
                      },
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: size.width / 7,
                      height: size.width / 6.5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: primaryColor)),
                      child: Center(
                          child: Icon(
                        Icons.location_on_rounded,
                        size: 35,
                        color: primaryColor,
                      )),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Container(
                        width: size.width / 1.6,
                        height: size.height / 13,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 1),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "  تآكيد",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "اضف التفاصيل",
              style: TextStyle(fontSize: 25),
            )),
            //content: Text("body"),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " توفي",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " سكر زيادة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "حليب",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "بدون سكر ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "  كريمة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            title: const Center(
                child: Text(
              "أضف ملاحظاتك على الطلب ",
              style: TextStyle(fontSize: 25),
            )),
            //content: Text("body"),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                child: const TextField(
                  keyboardType: TextInputType.multiline,
                  maxLength: 70,
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: "  اكتب هنا ",
                      labelStyle: TextStyle(fontSize: 15, color: Colors.black)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
