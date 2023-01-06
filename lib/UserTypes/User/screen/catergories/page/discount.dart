import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

import 'delegations_offer_screen.dart';

class DiscountScreen extends StatefulWidget {
  const DiscountScreen({Key? key}) : super(key: key);

  @override
  _DiscountScreenState createState() => _DiscountScreenState();
}

class _DiscountScreenState extends State<DiscountScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: _key,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: SideDrawer(),
        ),
        body: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const HomePage(),
                                    ),
                                  );
                                },
                                child: const Icon(
                                  // added by vp
                                  Icons.keyboard_arrow_left_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                              SizedBox(
                                width: size.width / 4, // vp should be var
                              ),
                            ],
                          ),
                          const Text(
                            "الخصومات",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            width: size.width / 4, // vp should be var
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
                              color: brownColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "الخصومات",
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
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "المندوبين",
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
              Column(
                children: [
                  Container(
                      width: size.width / 1.2,
                      height: size.height / 5,
                      margin: const EdgeInsets.symmetric(vertical: 20),
                      decoration: BoxDecoration(
                          color: Colors.orangeAccent,
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
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
                                          AssetImage("assest/images/man.jpg"),
                                    ),
                                  ),
                                ),
                              ),
                              const Text("jon stone"),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 13),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "كرت خصومات",
                                  style: TextStyle(fontSize: 16),
                                ),
                                Text(
                                  "صالحة لحتى ٢٠/٧/٢٠٢٠ ",
                                  style: TextStyle(fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          Image.asset(
                            "assest/images/qr.jpg",
                            width: 70,
                            height: 70,
                          )
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: const Center(
                              child: Text(
                            "10 %",
                            style: TextStyle(fontSize: 18),
                          )),
                          // child: const TextField(
                          //   decoration: InputDecoration(
                          //     label: Text("نسبته"),
                          //     enabledBorder: OutlineInputBorder(
                          //       borderSide:
                          //           BorderSide(width: 1, color: Colors.grey),
                          //     ),
                          //   ),
                          // ),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: const Center(
                              child: Text(
                            " xyz14",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Center(
                              child:
                                  Image.asset("assest/images/zaraStore.png")),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Center(
                              child: Image.asset("assest/images/coupon.jpg")),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: const Center(
                              child: Text(
                            "10 %",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: const Center(
                              child: Text(
                            " xyz14",
                            style: TextStyle(fontSize: 18),
                          )),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Center(
                              child:
                                  Image.asset("assest/images/zaraStore.png")),
                        ),
                        Container(
                          width: size.width / 5,
                          height: size.height / 16,
                          decoration: BoxDecoration(
                              border: Border.all(width: 1, color: Colors.grey)),
                          margin: const EdgeInsets.symmetric(
                            horizontal: 4,
                          ),
                          child: Center(
                              child: Image.asset("assest/images/coupon.jpg")),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: size.width / 1.2,
                    height: size.height / 16,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: const Center(
                        child: Text("تمتع بخصم يصل الى ١٠ من مالتي ناشونال")),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: size.width / 1.2,
                    height: size.height / 16,
                    margin: const EdgeInsets.symmetric(
                      horizontal: 15,
                    ),
                    decoration: BoxDecoration(
                        color: Colors.grey[200],
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.grey, width: 1)),
                    child: const Center(
                        child: Text("تمتع بخصم يصل الى١٠ من مالتي ناشونال")),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box(context),
                  Box(context),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Box(context),
                  Box(context),
                ],
              ),
            ],
          ),
        ),
        //  bottomNavigationBar: BottomNAvigationBar(),
      ),
    );
  }

  Widget Box(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Stack(
          children: [
            Image.asset("assest/images/coffee4.png"),
            Container(
                width: size.width / 4,
                height: size.height / 30,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      "assest/images/yellowbackground.png",
                    ),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Row(
                  children: const [
                    Icon(
                      Icons.local_fire_department,
                      color: Colors.white,
                    ),
                    Center(
                        child: Text(
                      "خصم 10%",
                      style: TextStyle(color: Colors.white),
                    )),
                  ],
                )),
          ],
        ),
        const Text("كوفي"),
        Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: size.width / 10,
                  height: size.height / 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assest/images/leaf2.png"),
                  )),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "متجر زارا",
                  style: TextStyle(color: secondaryColor, fontSize: 12),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  "٧ ريال",
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(
                  width: 6,
                ),
                Container(
                  width: size.width / 10,
                  height: size.height / 30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage("assest/images/leaf.png"),
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
        )
      ],
    );
  }
}
