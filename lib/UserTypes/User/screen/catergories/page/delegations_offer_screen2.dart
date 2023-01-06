import 'package:coffee_station/UserTypes/User/screen/Chat/page/chat_details_page.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/delegation_map.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'delegations_offer_screen.dart';
import 'discount.dart';

class delegationsOfferScreen2 extends StatefulWidget {
  const delegationsOfferScreen2({Key? key}) : super(key: key);

  @override
  _delegationsOfferScreen2State createState() =>
      _delegationsOfferScreen2State();
}

class _delegationsOfferScreen2State extends State<delegationsOfferScreen2> {
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
          child: SideDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                  Icons.keyboard_arrow_left_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "شارع خالد بن الوليد",
                            style: TextStyle(color: Colors.white, fontSize: 15),
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
                    //margin: EdgeInsets.only(top: size.height / 6.5),
                    margin: EdgeInsets.only(
                        top: size.height / (6.5 - 1.5) - size.height / 19 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DiscountScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 4,
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
                                "الخصومات",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const delegationsOfferScreen(),
                              ),
                            );
                          },
                          child: Container(
                            width: size.width / 4,
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
                                "المندوبين",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductsScreen(),
                              ),
                            );
                          },
                          child: Container(
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
                                "المنتجات",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const delegationsMap(),
                        ),
                      );
                    },
                    child: const Text(
                      "عرض جميع المندوبين",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  Text(
                    "عروض المندوبين",
                    style: TextStyle(
                      fontSize: 20,
                      color: secondaryColor,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 2.3,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: size.width / 5,
                                height: size.height / 22,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                    "assest/images/squar.png",
                                  ),
                                )),
                                child: const Center(
                                  child: Text(
                                    "٣٠ ريال ",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 10),
                                  ),
                                ),
                              ),
                              const Text(
                                "حائل شارع الملك خالد",
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text("                   "),
                                  Text(
                                    "المسافة ٥ دقائق",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 60,
                                  ),
                                  const Text(
                                    "كوفي #102",
                                    style: TextStyle(fontSize: 18),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Image.asset("assest/images/Image.png"),
                                ],
                              ),
                              Row(
                                // mainAxisAlignment:
                                //     MainAxisAlignment.spaceEvenly,
                                children: [
                                  SizedBox(
                                    width: size.width / 4,
                                  ),
                                  Image.asset("assest/images/whatsapp.png"),
                                  SizedBox(
                                    width: size.width / 18,
                                  ),
                                  InkWell(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const ChatDetailsPage(),
                                          ),
                                        );
                                      },
                                      child: const Icon(Icons.chat_outlined)),

                                  // const SizedBox(
                                  //   width: 15,
                                  // ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            width: size.width / 2,
                            height: size.height / 8,
                            margin: const EdgeInsets.symmetric(
                              vertical: 4,
                            ),
                            child: ListView(
                              children: const [
                                Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              const Text(
                                "رجوع",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Container(
                                width: size.width / 5,
                                height: size.height / 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: secondaryColor,
                                ),
                                child: const Center(
                                    child: Text(
                                  "قبول العرض",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )),
                              )
                            ],
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 4.5,
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
                          ),
                          const Text(
                            "أحمد يونس ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: size.height / 58),
                            child: Center(
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 4.2,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width / 5,
                            height: size.height / 22,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                "assest/images/squar.png",
                              ),
                            )),
                            child: const Center(
                              child: Text(
                                "٣٠ ريال ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          const Text(
                            "المزيد",
                            style: TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 1,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "حائل شارع الملك خالد",
                            style: TextStyle(fontSize: 18),
                          ),
                          const Text(
                            "المسافة ٥ دقائق",
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              const Text(
                                "كوفي #102",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset("assest/images/Image.png"),
                            ],
                          ),
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryColor,
                            ),
                            child: const Center(
                                child: Text(
                              "قبول العرض",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 4.5,
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
                          ),
                          const Text(
                            "أحمد يونس ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: size.height / 58),
                            child: Center(
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: size.width / 1.2,
                height: size.height / 4,
                child: Card(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: size.width / 5,
                            height: size.height / 22,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                              image: AssetImage(
                                "assest/images/squar.png",
                              ),
                            )),
                            child: const Center(
                              child: Text(
                                "٣٠ ريال ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 10),
                              ),
                            ),
                          ),
                          const Text(
                            "المزيد",
                            style: TextStyle(fontSize: 22),
                          ),
                          const SizedBox(
                            height: 1,
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text(
                            "حائل شارع الملك خالد",
                            style: TextStyle(fontSize: 18),
                          ),
                          const Text(
                            "المسافة ٥ دقائق",
                            style: TextStyle(fontSize: 18),
                          ),
                          Row(
                            children: [
                              const Text(
                                "كوفي #102",
                                style: TextStyle(fontSize: 18),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Image.asset("assest/images/Image.png"),
                            ],
                          ),
                          Container(
                            width: size.width / 5,
                            height: size.height / 25,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: secondaryColor,
                            ),
                            child: const Center(
                                child: Text(
                              "قبول العرض",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white),
                            )),
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: size.width / 4.5,
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
                          ),
                          const Text(
                            "أحمد يونس ",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: size.height / 58),
                            child: Center(
                              child: RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                allowHalfRating: true,
                                itemCount: 5,
                                itemSize: 18,
                                // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                itemBuilder: (context, _) => const Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                ),
                                onRatingUpdate: (rating) {},
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // SizedBox(
              //   width: size.width,
              //   height: size.height,
              //   child: ListView(
              //     scrollDirection: Axis.vertical,
              //     padding: const EdgeInsets.all(18),
              //     children: [
              //       SizedBox(
              //         width: size.width / 1.2,
              //         height: size.height / 2.6,
              //         child: Card(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Column(
              //                 children: [
              //                   Row(
              //                     mainAxisAlignment:
              //                         MainAxisAlignment.spaceBetween,
              //                     children: [
              //                       Container(
              //                         width: size.width / 5,
              //                         height: size.height / 16,
              //                         decoration: const BoxDecoration(
              //                             image: DecorationImage(
              //                           image: AssetImage(
              //                             "assest/images/squar.png",
              //                           ),
              //                         )),
              //                         child: const Center(
              //                           child: Text(
              //                             "٣٠ ريال ",
              //                             style: TextStyle(
              //                                 color: Colors.white,
              //                                 fontSize: 10),
              //                           ),
              //                         ),
              //                       ),
              //                       const Text(
              //                         "حائل شارع الملك خالد",
              //                         style: TextStyle(fontSize: 18),
              //                       ),
              //                     ],
              //                   ),
              //                   Column(
              //                     children: [
              //                       Row(
              //                         mainAxisAlignment:
              //                             MainAxisAlignment.spaceBetween,
              //                         children: const [
              //                           Text("                   "),
              //                           Text(
              //                             "المسافة ٥ دقائق",
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                         ],
              //                       ),
              //                       Row(
              //                         children: [
              //                           const SizedBox(
              //                             width: 60,
              //                           ),
              //                           const Text(
              //                             "كوفي #102",
              //                             style: TextStyle(fontSize: 18),
              //                           ),
              //                           const SizedBox(
              //                             width: 10,
              //                           ),
              //                           Image.asset("assest/images/Image.png"),
              //                         ],
              //                       ),
              //                       Row(
              //                         children: [
              //                           const SizedBox(
              //                             width: 60,
              //                           ),
              //                           Image.asset(
              //                               "assest/images/messanger.png"),
              //                           const SizedBox(
              //                             width: 15,
              //                           ),
              //                           Image.asset(
              //                               "assest/images/whatsapp.png"),
              //                         ],
              //                       ),
              //                     ],
              //                   ),
              //                   const SizedBox(
              //                     height: 10,
              //                   ),
              //                   Container(
              //                     width: size.width / 2,
              //                     height: size.height / 8,
              //                     margin: const EdgeInsets.symmetric(
              //                       vertical: 4,
              //                     ),
              //                     child: ListView(
              //                       children: const [
              //                         Text(
              //                             "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
              //                       ],
              //                     ),
              //                   ),
              //                   const SizedBox(
              //                     height: 5,
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text(
              //                         "رجوع",
              //                         style: TextStyle(
              //                             fontSize: 18,
              //                             fontWeight: FontWeight.bold),
              //                       ),
              //                       const SizedBox(
              //                         width: 30,
              //                       ),
              //                       Container(
              //                         width: size.width / 5,
              //                         height: size.height / 25,
              //                         decoration: BoxDecoration(
              //                           borderRadius: BorderRadius.circular(10),
              //                           color: secondaryColor,
              //                         ),
              //                         child: const Center(
              //                             child: Text(
              //                           "قبول العرض",
              //                           style: TextStyle(
              //                               fontSize: 15, color: Colors.white),
              //                         )),
              //                       )
              //                     ],
              //                   ),
              //                 ],
              //               ),
              //               Column(
              //                 children: [
              //                   Container(
              //                     width: size.width / 4.5,
              //                     height: size.height / 10,
              //                     decoration: const ShapeDecoration(
              //                         shape: CircleBorder(),
              //                         color: Colors.white),
              //                     child: const DecoratedBox(
              //                       decoration: ShapeDecoration(
              //                           shape: CircleBorder(),
              //                           image: DecorationImage(
              //                               fit: BoxFit.cover,
              //                               image: AssetImage(
              //                                   "assest/images/emma.webp"))),
              //                     ),
              //                   ),
              //                   const Text(
              //                     "أحمد يونس ",
              //                     style: TextStyle(
              //                         fontSize: 20,
              //                         color: Colors.black,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   Container(
              //                     margin:
              //                         EdgeInsets.only(top: size.height / 58),
              //                     child: Center(
              //                       child: RatingBar.builder(
              //                         initialRating: 4,
              //                         minRating: 1,
              //                         direction: Axis.horizontal,
              //                         allowHalfRating: true,
              //                         itemCount: 5,
              //                         itemSize: 20,
              //                         // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              //                         itemBuilder: (context, _) => const Icon(
              //                           Icons.star,
              //                           color: Colors.amber,
              //                         ),
              //                         onRatingUpdate: (rating) {},
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       SizedBox(
              //         width: size.width / 1.2,
              //         height: size.height / 5,
              //         child: Card(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Container(
              //                     width: size.width / 5,
              //                     height: size.height / 22,
              //                     decoration: const BoxDecoration(
              //                         image: DecorationImage(
              //                       image: AssetImage(
              //                         "assest/images/squar.png",
              //                       ),
              //                     )),
              //                     child: const Center(
              //                       child: Text(
              //                         "٣٠ ريال ",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 10),
              //                       ),
              //                     ),
              //                   ),
              //                   const Text(
              //                     "المزيد",
              //                     style: TextStyle(fontSize: 22),
              //                   ),
              //                   const SizedBox(
              //                     height: 1,
              //                   )
              //                 ],
              //               ),
              //               Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   const Text(
              //                     "حائل شارع الملك خالد",
              //                     style: TextStyle(fontSize: 18),
              //                   ),
              //                   const Text(
              //                     "المسافة ٥ دقائق",
              //                     style: TextStyle(fontSize: 18),
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text(
              //                         "كوفي #102",
              //                         style: TextStyle(fontSize: 18),
              //                       ),
              //                       const SizedBox(
              //                         width: 10,
              //                       ),
              //                       Image.asset("assest/images/Image.png"),
              //                     ],
              //                   ),
              //                   Container(
              //                     width: size.width / 5,
              //                     height: size.height / 25,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(10),
              //                       color: secondaryColor,
              //                     ),
              //                     child: const Center(
              //                         child: Text(
              //                       "قبول العرض",
              //                       style: TextStyle(
              //                           fontSize: 15, color: Colors.white),
              //                     )),
              //                   )
              //                 ],
              //               ),
              //               Column(
              //                 children: [
              //                   Container(
              //                     width: size.width / 4.5,
              //                     height: size.height / 10,
              //                     decoration: const ShapeDecoration(
              //                         shape: CircleBorder(),
              //                         color: Colors.white),
              //                     child: const DecoratedBox(
              //                       decoration: ShapeDecoration(
              //                           shape: CircleBorder(),
              //                           image: DecorationImage(
              //                               fit: BoxFit.cover,
              //                               image: AssetImage(
              //                                   "assest/images/emma.webp"))),
              //                     ),
              //                   ),
              //                   const Text(
              //                     "أحمد يونس ",
              //                     style: TextStyle(
              //                         fontSize: 20,
              //                         color: Colors.black,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   Container(
              //                     margin:
              //                         EdgeInsets.only(top: size.height / 58),
              //                     child: Center(
              //                       child: RatingBar.builder(
              //                         initialRating: 4,
              //                         minRating: 1,
              //                         direction: Axis.horizontal,
              //                         allowHalfRating: true,
              //                         itemCount: 5,
              //                         itemSize: 20,
              //                         // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              //                         itemBuilder: (context, _) => const Icon(
              //                           Icons.star,
              //                           color: Colors.amber,
              //                         ),
              //                         onRatingUpdate: (rating) {},
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //       SizedBox(
              //         width: size.width / 1.2,
              //         height: size.height / 5,
              //         child: Card(
              //           child: Row(
              //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //             children: [
              //               Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //                 children: [
              //                   Container(
              //                     width: size.width / 5,
              //                     height: size.height / 22,
              //                     decoration: const BoxDecoration(
              //                         image: DecorationImage(
              //                       image: AssetImage(
              //                         "assest/images/squar.png",
              //                       ),
              //                     )),
              //                     child: const Center(
              //                       child: Text(
              //                         "٣٠ ريال ",
              //                         style: TextStyle(
              //                             color: Colors.white, fontSize: 10),
              //                       ),
              //                     ),
              //                   ),
              //                   const Text(
              //                     "المزيد",
              //                     style: TextStyle(fontSize: 22),
              //                   ),
              //                   const SizedBox(
              //                     height: 1,
              //                   )
              //                 ],
              //               ),
              //               Column(
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   const Text(
              //                     "حائل شارع الملك خالد",
              //                     style: TextStyle(fontSize: 18),
              //                   ),
              //                   const Text(
              //                     "المسافة ٥ دقائق",
              //                     style: TextStyle(fontSize: 18),
              //                   ),
              //                   Row(
              //                     children: [
              //                       const Text(
              //                         "كوفي #102",
              //                         style: TextStyle(fontSize: 18),
              //                       ),
              //                       const SizedBox(
              //                         width: 10,
              //                       ),
              //                       Image.asset("assest/images/Image.png"),
              //                     ],
              //                   ),
              //                   Container(
              //                     width: size.width / 5,
              //                     height: size.height / 25,
              //                     decoration: BoxDecoration(
              //                       borderRadius: BorderRadius.circular(10),
              //                       color: secondaryColor,
              //                     ),
              //                     child: const Center(
              //                         child: Text(
              //                       "قبول العرض",
              //                       style: TextStyle(
              //                           fontSize: 15, color: Colors.white),
              //                     )),
              //                   )
              //                 ],
              //               ),
              //               Column(
              //                 children: [
              //                   Container(
              //                     width: size.width / 4.5,
              //                     height: size.height / 10,
              //                     decoration: const ShapeDecoration(
              //                         shape: CircleBorder(),
              //                         color: Colors.white),
              //                     child: const DecoratedBox(
              //                       decoration: ShapeDecoration(
              //                           shape: CircleBorder(),
              //                           image: DecorationImage(
              //                               fit: BoxFit.cover,
              //                               image: AssetImage(
              //                                   "assest/images/emma.webp"))),
              //                     ),
              //                   ),
              //                   const Text(
              //                     "أحمد يونس ",
              //                     style: TextStyle(
              //                         fontSize: 20,
              //                         color: Colors.black,
              //                         fontWeight: FontWeight.bold),
              //                   ),
              //                   Container(
              //                     margin:
              //                         EdgeInsets.only(top: size.height / 58),
              //                     child: Center(
              //                       child: RatingBar.builder(
              //                         initialRating: 4,
              //                         minRating: 1,
              //                         direction: Axis.horizontal,
              //                         allowHalfRating: true,
              //                         itemCount: 5,
              //                         itemSize: 20,
              //                         // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
              //                         itemBuilder: (context, _) => const Icon(
              //                           Icons.star,
              //                           color: Colors.amber,
              //                         ),
              //                         onRatingUpdate: (rating) {},
              //                       ),
              //                     ),
              //                   ),
              //                 ],
              //               ),
              //             ],
              //           ),
              //         ),
              //       ),
              //       const SizedBox(
              //         height: 10,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
