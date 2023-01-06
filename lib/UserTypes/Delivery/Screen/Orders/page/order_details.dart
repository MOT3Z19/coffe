import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/GoogleMap/page/google_map1.dart';
import 'package:coffee_station/UserTypes/Delivery/Screen/offer/page/offer_details.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import '../../client/page/client_details.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
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
                      margin: EdgeInsets.symmetric(horizontal: size.width / 40),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
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
                          SizedBox(
                            width: size.width / 4,
                          ),
                          const Center(
                            child: Text(
                              "   تفاصيل الطلب ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                  Center(
                    child: Text(
                      "102#",
                      style: TextStyle(fontSize: 25),
                    ),
                  ),
                  Icon(Icons.navigate_next),
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      width: size.width / 1.5,
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
                            const Text(
                              "كوفي",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Image.asset("assest/images/coffee4.png"),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      width: size.width / 1.5,
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
                            const Text(
                              "كوفي",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
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
                margin: EdgeInsets.only(right: size.width / 17),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "  اسم العميل",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "عنوان المرسل له",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ClientDetails(),
                          ),
                        );
                      },
                      child: Text(
                        "  احمد محمد",
                        style: TextStyle(fontSize: 15, color: brownColor),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GoogleMap1(),
                          ),
                        );
                      },
                      child: Row(
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
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 17,
                ),
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
                  horizontal: size.width / 13,
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
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 17,
                ),
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
                margin: const EdgeInsets.symmetric(
                  horizontal: 19,
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
              const SizedBox(
                height: 8,
              ),
              Container(
                margin: EdgeInsets.only(right: size.width / 12),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const GoogleMap1(),
                          ),
                        );
                      },
                      child: Row(
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
                    const Text(
                      "عنوان التوصيل منه",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 3,
              ),
              const Divider(
                thickness: 1.0,
                color: Colors.black38,
              ),
              const SizedBox(
                height: 3,
              ),
              const Center(
                  child: Text(
                "الملاحظات",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              )),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20),
                child: const Text(
                    "Lorem ipsum dolor sit amet, lore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const OfferDetails(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 18, vertical: 18),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تقديم عرض",
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
