import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'clients.dart';

class ClientDetailss extends StatefulWidget {
  const ClientDetailss({Key? key}) : super(key: key);

  @override
  _ClientDetailssState createState() => _ClientDetailssState();
}

class _ClientDetailssState extends State<ClientDetailss> {
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
                            builder: (context) => Clients(),
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
                                      "العميل : احمد محمود  ",
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
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("المناديب"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("المتاجر"),
                          Text(
                            "5",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("العملاء"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الشركات"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الطلبات الحالية"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الطلبات الملغية"),
                          Text(
                            "5",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الطلبات المنتهية"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الطلبات"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الدول"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("الاقتراحات"),
                          Text(
                            "5",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("التذاكر"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("العروض"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("المنتجات"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("طلبات المنتجات"),
                          Text(
                            "5",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("التصفيات"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 100,
                    height: 50,
                    child: Card(
                      child: Column(
                        children: const [
                          Text("المدن"),
                          Text(
                            "55",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              // Container(
              //   margin: EdgeInsets.symmetric(vertical: 10),
              //   child: Center(
              //       child: Text(
              //     "تقييمات العملاء",
              //     style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              //   )),
              // ),
              // SizedBox(
              //   width: size.width / 1.1,
              //   height: size.height / 3.5,
              //   child: Card(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         const CircleAvatar(
              //           backgroundImage: AssetImage("assest/images/man.jpg"),
              //           maxRadius: 30,
              //         ),
              //         const Center(
              //           child: Text(
              //             " احمد محمود ",
              //             style: TextStyle(fontSize: 20),
              //           ),
              //         ),
              //         Container(
              //           margin: EdgeInsets.only(top: size.height / 58),
              //           child: Center(
              //             child: RatingBar.builder(
              //               initialRating: 5,
              //               minRating: 1,
              //               direction: Axis.horizontal,
              //               allowHalfRating: true,
              //               itemCount: 5,
              //               itemSize: 15,
              //               // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              //               itemBuilder: (context, _) => const Icon(
              //                 Icons.star,
              //                 color: Colors.amber,
              //               ),
              //               onRatingUpdate: (rating) {},
              //             ),
              //           ),
              //         ),
              //         Container(
              //           width: size.width / 1.3,
              //           height: size.height / 14,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: greyColor2,
              //           ),
              //           child: const Center(
              //             child: Text(
              //               " قائد مركبة مميز وذو خبرة أنصح به ",
              //               style: TextStyle(fontSize: 20),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: size.width / 1.1,
              //   height: size.height / 3.5,
              //   child: Card(
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //       children: [
              //         const CircleAvatar(
              //           backgroundImage: AssetImage("assest/images/man.jpg"),
              //           maxRadius: 30,
              //         ),
              //         const Center(
              //           child: Text(
              //             " احمد محمود ",
              //             style: TextStyle(fontSize: 20),
              //           ),
              //         ),
              //         Container(
              //           margin: EdgeInsets.only(top: size.height / 58),
              //           child: Center(
              //             child: RatingBar.builder(
              //               initialRating: 5,
              //               minRating: 1,
              //               direction: Axis.horizontal,
              //               allowHalfRating: true,
              //               itemCount: 5,
              //               itemSize: 15,
              //               // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              //               itemBuilder: (context, _) => const Icon(
              //                 Icons.star,
              //                 color: Colors.amber,
              //               ),
              //               onRatingUpdate: (rating) {},
              //             ),
              //           ),
              //         ),
              //         Container(
              //           width: size.width / 1.3,
              //           height: size.height / 14,
              //           decoration: BoxDecoration(
              //             borderRadius: BorderRadius.circular(20),
              //             color: greyColor2,
              //           ),
              //           child: const Center(
              //             child: Text(
              //               " قائد مركبة مميز وذو خبرة أنصح به ",
              //               style: TextStyle(fontSize: 20),
              //             ),
              //           ),
              //         )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
