import 'dart:ui';

import 'package:coffee_station/UserTypes/ServiceProvider/Screen/product/sp_product_page.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderProductPage2 extends StatefulWidget {
  const ServiceProviderProductPage2({Key? key}) : super(key: key);

  @override
  _ServiceProviderProductPage2State createState() =>
      _ServiceProviderProductPage2State();
}

class _ServiceProviderProductPage2State
    extends State<ServiceProviderProductPage2> {
  int _n = 1;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.height / 40, vertical: size.height / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: const [
                          Icon(Icons.favorite_border),
                          Icon(Icons.shopping_cart_outlined),
                        ],
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderProductPage(),
                              ),
                            );
                          },
                          child: const Icon(Icons.navigate_next)),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assest/images/coffee2.png",
                      width: size.width,
                      fit: BoxFit.fill,
                    ),
                    Container(
                        width: size.width / 3.5,
                        height: size.height / 28,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assest/images/yellowbackground.png",
                            ),
                            fit: BoxFit.fill,
                          ),
                        ),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: const [
                              Icon(
                                Icons.local_fire_department,
                                color: Colors.white,
                              ),
                              Text(
                                "خصم 10%",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        )),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RatingBar.builder(
                      initialRating: 4,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 30,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    RichText(
                      text: TextSpan(
                          text: '102#',
                          style: const TextStyle(
                              color: Colors.black, fontSize: 18),
                          children: <TextSpan>[
                            const TextSpan(
                                text: '  كوفي ',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18)),
                            TextSpan(
                                text: ' متجر زارا ',
                                style: TextStyle(
                                    color: secondaryColor, fontSize: 18)),
                          ]),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    Text(
                      "ريال 16.60  ",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "فرع الكورنيش 1100",
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "الوصف",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.height / 40, vertical: size.height / 40),
                  child: const Text(
                    "Lorem ipsum dolor sit amet, "
                    "consectetur adipiscing elit, sed do eiusmod tempor incididunt ut ",
                    style: TextStyle(fontSize: 15, color: Colors.grey),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "اضافة التفاصيل",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Icon(
                        Icons.add_circle_outline_outlined,
                        color: secondaryColor,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " قرفة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        " بدون سكر",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        " كريمة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " السعر الكلي",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: size.width / 3,
                      height: size.height / 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          InkWell(
                              child: Text(" - ",
                                  style: TextStyle(fontSize: 20.0))),
                          Text('2', style: TextStyle(fontSize: 20.0)),
                          InkWell(
                              child: Text(" + ",
                                  style: TextStyle(fontSize: 20.0))),
                        ],
                      ),
                    ),
                    const Text(
                      " ١٩٠ ريال ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 18, vertical: size.height / 22),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "اضف الى السلة",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.navigate_before),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "منتجات مشابهة",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.navigate_next),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: size.height / 30,
                  ),
                  width: size.width,
                  height: size.height / 5.8,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int ind) {
                      return Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                const Text(
                                  " كوفي",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const Text(
                                  " ريال 18",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
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
                                    const SizedBox(
                                      width: 90,
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
                            ),
                            Image.asset(
                              "assest/images/coffee3.png",
                              // fit: BoxFit.fill,
                            ),
                          ],
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
