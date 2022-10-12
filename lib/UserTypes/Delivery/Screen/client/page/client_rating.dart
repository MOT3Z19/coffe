import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/side_drawer.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ClientRating extends StatefulWidget {
  const ClientRating({Key? key}) : super(key: key);

  @override
  _ClientRatingState createState() => _ClientRatingState();
}

class _ClientRatingState extends State<ClientRating> {
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
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
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
                        margin:
                            EdgeInsets.symmetric(horizontal: size.width / 40),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                            const Text(
                              "تقييم العميل",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                  height: 30,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assest/images/emma.webp"),
                  maxRadius: 50,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Center(
                  child: Text(
                    " ايما ستون ",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: size.height / 58),
                  child: Center(
                    child: RatingBar.builder(
                      initialRating: 0,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 40,
                      // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 20, vertical: size.height / 30),
                  height: size.height / 8,
                  child: const TextField(
                    maxLines: 9,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "اكتب  هنا ...",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: size.width / 1.1,
                  height: size.height / 17,
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "تاكيد ",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // width: size.width / 1.2,
                      height: size.height / 17,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Center(
                        child: Text(
                          "تقديم شكوى",
                          style: TextStyle(color: secondaryColor, fontSize: 24),
                        ),
                      ),
                    ),
                    Container(
                      //  width: size.width / 2,
                      height: size.height / 17,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      child: Center(
                        child: Text(
                          "تم التسليم ",
                          style: TextStyle(color: secondaryColor, fontSize: 24),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
