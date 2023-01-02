import 'dart:ui';

import 'package:coffee_station/UserTypes/Admin/Screen/serivce_provider_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'Order/delegation_order.dart';
import 'clients.dart';

class ServiceProviderDetails extends StatefulWidget {
  const ServiceProviderDetails({Key? key}) : super(key: key);

  @override
  _ServiceProviderDetailsState createState() => _ServiceProviderDetailsState();
}

class _ServiceProviderDetailsState extends State<ServiceProviderDetails> {
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ServiceProviderPage(),
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            right: size.width / 1.2, bottom: 50),
                        child: const Icon(
                          Icons.keyboard_arrow_left_rounded,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: size.height / 8,
                      ),
                      Stack(
                        alignment: Alignment.topCenter,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(size.height / 30),
                            child: SizedBox(
                              width: size.width / 1.1,
                              height: size.height / 3.1,
                              child: Card(
                                child: Column(
                                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    const SizedBox(
                                      height: 70,
                                    ),
                                    // Row(
                                    //   mainAxisAlignment:
                                    //       MainAxisAlignment.spaceBetween,
                                    //   children: [
                                    //     const Icon(
                                    //       Icons.favorite_border,
                                    //       size: 30,
                                    //     ),
                                    //     InkWell(
                                    //       onTap: () {
                                    //         Navigator.push(
                                    //           context,
                                    //           MaterialPageRoute(
                                    //             builder: (context) =>
                                    //                 ChatDetailsPage(),
                                    //           ),
                                    //         );
                                    //       },
                                    //       child: const Icon(
                                    //         Icons.chat_outlined,
                                    //         size: 30,
                                    //       ),
                                    //     ),
                                    //   ],
                                    // ),
                                    // const SizedBox(
                                    //   height: 20,
                                    // ),
                                    const Text(
                                      "التاجر : احمد محمود  ",
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(
                                          top: size.height / 58),
                                      child: Center(
                                        child: RatingBar.builder(
                                          initialRating: 5,
                                          minRating: 5,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 5,
                                          itemSize: 20,
                                          // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                          itemBuilder: (context, _) =>
                                              const Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {},
                                        ),
                                      ),
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Text(
                                                "عدد المتاجر",
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
                                      image:
                                          AssetImage("assest/images/man.jpg"))),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                width: size.width / 1.1,
                height: size.height / 4.7,
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
                      Text(
                        "PML 06 , PO 2452, Damam",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box(" المناديب"),
                  Box(" المتاجر"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Clients(),
                        ),
                      );
                    },
                    child: Box(" العملاء"),
                  ),
                  Box(" الشركات"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box("الطلبات الحالية"),
                  Box("الطلبات الملغية"),
                  Box("الطلبات المنتهية"),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DelegationOrder(),
                        ),
                      );
                    },
                    child: Box("الطلبات"),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box("الدول"),
                  Box("الاقتراحات"),
                  Box("التذاكر"),
                  Box("العروض"),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Box(" المنتجات"),
                  Box("طلبات المنتجات"),
                  Box("التصفيات"),
                  Box("المدن"),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(String title) {
    return SizedBox(
      width: 100,
      height: 50,
      child: Card(
        child: Column(
          children: [
            Text("$title"),
            const Text(
              "55",
              style: TextStyle(color: Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}
