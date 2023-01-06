import 'package:coffee_station/UserTypes/User/screen/Cart/page/full_card.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'current_order.dart';

class OrderRating extends StatefulWidget {
  const OrderRating({Key? key}) : super(key: key);

  @override
  _OrderRatingState createState() => _OrderRatingState();
}

class _OrderRatingState extends State<OrderRating> {
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
                          const Center(
                            child: Text(
                              " تقييم الطلب ",
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
                              size: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 1,
              ),
              const Text(
                "تقييم المنتج",
                style: TextStyle(fontSize: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 2.7,
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: size.width / 2.4,
                      margin: EdgeInsets.symmetric(
                          vertical: size.width / 18, horizontal: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assest/images/coffee4.png",
                              fit: BoxFit.fill,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "كوفي",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    " #102",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: size.height / 58),
                                    child: Center(
                                      child: RatingBar.builder(
                                        initialRating: 0,
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
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.width / 138, horizontal: size.width / 15),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: " اكتب ملاحظاتك ..",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              const Text(
                "تقييم المتجر",
                style: TextStyle(fontSize: 20),
              ),
              Container(
                margin: const EdgeInsets.only(top: 1),
                child: Center(
                  child: RatingBar.builder(
                    initialRating: 0,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 30,
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
                    vertical: size.width / 90, horizontal: size.width / 15),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      // enabledBorder: OutlineInputBorder(
                      //   borderSide: BorderSide(width: 1, color: Colors.grey),
                      // ),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              InkWell(
                onTap: () {
                  showDialog1();
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 16,
                  margin: EdgeInsets.symmetric(
                      vertical: size.width / 75, horizontal: size.width / 20),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "ارسل",
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

  showDialog1() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 1.1,
                        height: size.height / 13,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "مواصلة التسوق",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => FullCard(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 1.1,
                        height: size.height / 13,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "سلتي",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CurrentOrders(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 1.1,
                        height: size.height / 13,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "طلباتي",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
