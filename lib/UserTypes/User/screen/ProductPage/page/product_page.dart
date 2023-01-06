import 'dart:ui';

import 'package:coffee_station/UserTypes/User/screen/Chat/page/chat_details_page.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _n = 0;
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
                      horizontal: size.width / 40, vertical: size.height / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: const Icon(
                              Icons.arrow_back_ios,
                              color: Colors.black,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ChatDetailsPage(),
                            ),
                          );
                        },
                        child: const Icon(
                          Icons.chat_outlined,
                          color: Colors.black,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
                //

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
                    Container(
                      margin: EdgeInsets.only(top: size.width / 1.4),
                      child: Row(
                        children: const [
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 40,
                          ),
                          Icon(
                            Icons.favorite_border,
                            color: Colors.white,
                            size: 40,
                          ),
                        ],
                      ),
                    )
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
                    children: const [
                      Text(
                        "اختر التفاصيل",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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

                    /////
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
                          " حليب",
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
                      width: size.width / 5,
                      height: size.height / 18.5,
                      decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Center(
                        child: Text(
                          " قرفة",
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
                          " بدون سكر",
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
                          " كريمة",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: size.width / 2.5,
                      height: size.height / 30,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      ": كود الخصم",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        ": السعر الكلي",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
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
                        children: [
                          InkWell(
                              onTap: () {
                                setState(() {
                                  if (_n != 0) _n--;
                                });
                              },
                              child: const Text(" - ",
                                  style: TextStyle(fontSize: 20.0))),
                          Text('$_n', style: const TextStyle(fontSize: 20.0)),
                          InkWell(
                              onTap: () {
                                setState(() {
                                  _n++;
                                });
                              },
                              child: const Text(" + ",
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
                Row(
                  children: [
                    Container(
                      width: size.width / 2.3,
                      height: size.height / 17,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 32,
                          vertical: size.height / 20),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "أضف الى السلة",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 2.3,
                      height: size.height / 17,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 32,
                          vertical: size.height / 20),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "شراء مباشرة",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "منتجات مشابهة",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Icon(Icons.navigate_before),
                    Icon(Icons.navigate_next),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                    vertical: size.height / 30,
                  ),
                  width: size.width,
                  height: size.height / 6.9, // need
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
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
