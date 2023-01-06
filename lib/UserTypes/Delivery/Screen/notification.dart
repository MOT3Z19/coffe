import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import 'GoogleMap/page/google_map2.dart';
import 'Orders/page/order_details.dart';
import 'Orders/page/side_drawer.dart';
import 'client/page/client_rating.dart';

class DeliveryNotification extends StatefulWidget {
  const DeliveryNotification({Key? key}) : super(key: key);

  @override
  _DeliveryNotificationState createState() => _DeliveryNotificationState();
}

class _DeliveryNotificationState extends State<DeliveryNotification> {
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
                          const Icon(
                            // added by vp
                            Icons.keyboard_arrow_left_rounded,
                            color: Colors.white,
                            size: 30,
                          ),
                          const Center(
                            child: Text(
                              "الاشعارات",
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
              const SizedBox(
                height: 20,
              ),
              ///////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "  تم قبول عرضك",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GoogleMap2()));
                        },
                        child: const Icon(
                          Icons.location_on_sharp,
                          size: 20,
                        ),
                      ),
                      const Text(
                        "المكان: شارع خالد بن الوليد",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Text(
                    "اسم الزبون: محمد مرتجى ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "الوقت: 5:00 م",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "رقم الطلب:  ١٠٢ ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderDetails(),
                        ),
                      );
                    },
                    child: Text(
                      "تفاصيل الطلب",
                      style: TextStyle(fontSize: 17, color: secondaryColor),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const DottedLine(),
              /////////
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "تم قبول الغاء التوصيل",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GoogleMap2()));
                        },
                        child: const Icon(
                          Icons.location_on_sharp,
                          size: 20,
                        ),
                      ),
                      const Text(
                        "المكان: شارع خالد بن الوليد",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Text(
                    "اسم الزبون: محمد مرتجى ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "الوقت: 5:00 م",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "رقم الطلب:  ١٠٢ ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Text(
                    "تفاصيل الطلب",
                    style: TextStyle(fontSize: 17, color: secondaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const DottedLine(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: const [
                      Text("سعيد"),
                      Icon(Icons.person),
                    ],
                  ),
                  const Text(
                    "تم الغاء الطلب من قبل العميل",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.notifications,
                    size: 40,
                    color: secondaryColor,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const GoogleMap2()));
                        },
                        child: const Icon(
                          Icons.location_on_sharp,
                          size: 20,
                        ),
                      ),
                      const Text(
                        "المكان: شارع خالد بن الوليد",
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                  const Text(
                    "اسم الزبون: محمد مرتجى ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "الوقت: 5:00 م",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 14),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      "رقم الطلب:  ١٠٢ ",
                      style: TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "٥ دقائق",
                    style: TextStyle(fontSize: 19),
                  ),
                  const SizedBox(
                    width: 55,
                  ),
                  Text(
                    "تفاصيل الطلب",
                    style: TextStyle(fontSize: 17, color: secondaryColor),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ClientRating()));
                },
                child: Container(
                  width: size.width / 1.2,
                  height: size.height / 16,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: primaryColor,
                  ),
                  child: const Center(
                      child: Text(
                    "تقييمات العملاء  ",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const DottedLine(),
            ],
          ),
        ),
      ),
    );
  }
}
