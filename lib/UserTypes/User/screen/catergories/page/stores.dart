import 'dart:ui';

// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/store_product.dart';
import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/home_google_map.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_product.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'delegations_offer_screen.dart';
import 'discount.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({Key? key}) : super(key: key);

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
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
                                //added by vp
                                width: size.width / 4, // vp should be var
                              ),
                            ],
                          ),
                          const Text(
                            "المتاجر",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            //added by vp
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
              Container(
                width: size.width / 1.3,
                height: size.height / 17,
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
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 20),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    label: Text("ابحث هنا"),
                  ),
                ),
              ),
              InkWell(
                // onTap: () {
                //   Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => const ProductsScreen(),
                //     ),
                //   );
                // },
                child: Container(
                  margin: EdgeInsets.only(top: size.height / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: size.width / 5,
                        height: size.height / 18.5,
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
                        child: Row(
                          children: const [
                            Icon(Icons.keyboard_arrow_down_rounded),
                            Center(
                              child: Text(
                                "الدمام",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                            ),
                          ],
                        ),
                      ),
                      InkWell(
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 18.5,
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
                          child: Row(
                            children: const [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              Center(
                                child: Text(
                                  "الجديد",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 18.5,
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
                          child: Row(
                            children: const [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              Center(
                                child: Text(
                                  " المتجر",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      InkWell(
                        child: Container(
                          width: size.width / 5,
                          height: size.height / 18.5,
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
                          child: Row(
                            children: const [
                              Icon(Icons.keyboard_arrow_down_rounded),
                              Center(
                                child: Text(
                                  " الاصناف",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeGoogleMap(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      vertical: size.height / 55, horizontal: size.width / 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Text(
                        "عرضهم على الخريطة ",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
              Store(context),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Store(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const StoreProducts(),
          ),
        );
        // need
      },
      child: Container(
        width: size.width / 1.1,
        height: size.height / 7.5,
        decoration: const BoxDecoration(
          boxShadow: [
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
          // borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              width: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  "متجر زارا",
                  style: TextStyle(fontSize: 17),
                ),
                const Text(
                  "فرع الكورنيش 0110",
                  style: TextStyle(fontSize: 17, color: Colors.grey),
                ),
                Row(
                  //   mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "الكويت",
                      style: TextStyle(fontSize: 17),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.location_on_rounded,
                      color: secondaryColor,
                    )
                  ],
                ),
              ],
            ),
            Container(
              width: size.width / 2.2,
              height: size.height / 8,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assest/images/zara.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    "assest/images/blackBackground.png",
                    height: size.height / 8,
                    width: size.width / 2.2,
                    fit: BoxFit.fill,
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 50),
                    child: Center(
                      child: RatingBar.builder(
                        initialRating: 4,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 20,
                        // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
