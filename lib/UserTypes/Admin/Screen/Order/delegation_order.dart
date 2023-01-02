import 'dart:ui';

import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../Delivery/Screen/Orders/page/order_detials2.dart';
import '../admin_side_drawer.dart';

class DelegationOrder extends StatefulWidget {
  const DelegationOrder({Key? key}) : super(key: key);

  @override
  _DelegationOrderState createState() => _DelegationOrderState();
}

class _DelegationOrderState extends State<DelegationOrder> {
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
          child: AdminSideDrawer(),
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
                      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.push(
                              //   context,
                              //   MaterialPageRoute(
                              //     builder: (context) =>
                              //         ServiceProviderDetails(),
                              //   ),
                              // );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 4,
                          ),
                          const Text(
                            "الطلبات  ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: size.width / 4,
                          ),
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
                  Container(
                    margin: EdgeInsets.only(top: size.height / 6.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: size.width / 3.5,
                          height: size.height / 19,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: brownColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "طلبات المندوب",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 3.5,
                          height: size.height / 19,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 25.0, // soften the shadow
                                spreadRadius: 5.0, //extend the shadow
                                offset: Offset(
                                  1.0, // Move to right 10  horizontally
                                  1.0, // Move to bottom 10 Vertically
                                ),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              " الطلبات",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: size.height / 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      " المستقبلية",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Text(
                      " المكتملة",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: secondaryColor,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                    const Text(
                      " الحالية",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
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
    return Container(
      margin: EdgeInsets.symmetric(
          vertical: size.height / 60, horizontal: size.width / 20),
      width: size.width,
      height: size.height / 5,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          SizedBox(
            width: size.width / 1.1,
            height: size.height / 13,
            child: Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: size.width / 3,
                          ),
                          const Text(
                            "كوفي",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          SizedBox(
                            width: size.width / 4,
                          ),
                          const Text(
                            "محمد الحتو",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "١٠ ريال",
                            style: TextStyle(
                              color: secondaryColor,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 5.5,
                          ),
                          const Text(
                            ": الميزانية",
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: size.width / 5,
                          ),
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 15,
                            // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("تفاصيل الطلب"),
                          SizedBox(
                            width: size.width / 4,
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  // const SizedBox(
                  //   height: 10,
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const OrderDetails2(),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assest/images/coffee3.png",
                      fit: BoxFit.fill,
                      width: size.width / 2.5,
                      // height: size.height / 8,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
