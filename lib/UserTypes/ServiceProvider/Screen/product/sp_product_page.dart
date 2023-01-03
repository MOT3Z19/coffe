import 'dart:ui';

import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/add_product.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/product/sp_product_page2.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderProductPage extends StatefulWidget {
  const ServiceProviderProductPage({Key? key}) : super(key: key);

  @override
  _ServiceProviderProductPageState createState() =>
      _ServiceProviderProductPageState();
}

class _ServiceProviderProductPageState
    extends State<ServiceProviderProductPage> {
  bool value = false;
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
                      horizontal: size.height / 40, vertical: size.height / 40),
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
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.black,
                              size: 40,
                            ),
                          ),
                          const Text(
                            "١٠٢#",
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                      const Text(
                        "صنف حلويات - حلويات شرقية",
                        style: TextStyle(fontSize: 18),
                      ),
                      const Text(
                        "كوفي",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.height / 40, vertical: size.height / 90),
                  child: Row(
                    //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const ServiceProviderProductPage2(),
                            ),
                          );
                        },
                        child: Text(
                          "عرض مظهرها",
                          style: TextStyle(fontSize: 18, color: secondaryColor),
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AddProducts(),
                            ),
                          );
                        },
                        child: Text(
                          "تعديل",
                          style: TextStyle(fontSize: 18, color: secondaryColor),
                        ),
                      ),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assest/images/coffee2.png",
                      width: size.width,
                      fit: BoxFit.fill,
                      height: size.height / 3.4,
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
                  children: [
                    const Text(
                      "ريال 16.60  ",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    InkWell(
                      onTap: () {
                        showDialog2();
                      },
                      child: const Text(
                        "فرع الكورنيش 1100",
                        style: TextStyle(fontSize: 15, color: Colors.grey),
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
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Icon(
                        Icons.add_circle_outline_outlined,
                        color: secondaryColor,
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
                          " قرفة",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 3.5,
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
                      width: size.width / 3.5,
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
                const SizedBox(
                  height: 10,
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 10, bottom: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "السعر الكلي : ١٨ ريال",
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                    ],
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
                  height: size.height / 9,
                  child: ListView.builder(
                    itemCount: 4,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  " كوفي",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  " ريال 18",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            const SizedBox(
                              width: 30,
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
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "ادخل الفروع التي تريد اضافتها ",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
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
                        " الشمالية",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),

                  /////
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text(
                        "   الجنوبية ",
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
                        "  الوسطى",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey[200],
                    ),
                    child: const Center(
                      child: Text(
                        "  الغربية",
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
                        " الجنوبية",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
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
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " الشمالية",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),

                  /////
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: primaryColor,
                    ),
                    child: const Center(
                      child: Text(
                        "  الوسطى  ",
                        style: TextStyle(color: Colors.white, fontSize: 15),
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
                        "  الغربية",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Text(
                    "اختر الكل",
                    style: TextStyle(
                      fontSize: 25,
                    ),
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
              Container(
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
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              title: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: const Icon(Icons.arrow_back)),
                    ],
                  ),
                  const Center(
                      child: Text(
                    "ادخل تفاصيل اسم المنتج",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              actions: <Widget>[
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " الاسم",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 30, top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        " اخرى",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 35, vertical: 20),
                  child: const TextField(
                    decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                Container(
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
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
