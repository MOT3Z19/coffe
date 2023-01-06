import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/ProductPage/page/product_page.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'favourite_delegations.dart';
import 'favourite_store.dart';

class FavouriteProduct extends StatefulWidget {
  const FavouriteProduct({Key? key}) : super(key: key);

  @override
  State<FavouriteProduct> createState() => _FavouriteProductState();
}

class _FavouriteProductState extends State<FavouriteProduct> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
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
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.pop(
                              //   context,
                              // );
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
                          const Icon(
                            // added by vp
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                          SizedBox(
                            width: size.width / 5,
                          ),
                          const Center(
                            child: Text(
                              "مفضلتي ",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
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
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteDelegations(),
                        ),
                      );
                    },
                    child: const Text(
                      "المندوبين ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const FavouriteStore(),
                        ),
                      );
                    },
                    child: const Text(
                      "محلاتي ",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Text(
                    "منتجاتي ",
                    style: TextStyle(
                      fontSize: 18,
                      color: secondaryColor,
                      // decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Item(context),
              const SizedBox(
                height: 20,
              ),
              Item(context),
              const SizedBox(
                height: 20,
              ),
              Item(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget Item(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assest/images/coffee4.png"),
                  Row(
                    children: [
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
                      const SizedBox(
                        width: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.cancel_outlined),
                        ],
                      ),
                    ],
                  ),
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
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ProductPage(),
              ),
            );
          },
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assest/images/coffee4.png"),
                  Row(
                    children: [
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
                      const SizedBox(
                        width: 25,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Icon(Icons.cancel_outlined),
                        ],
                      ),
                    ],
                  ),
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
          ),
        ),
      ],
    );
  }
}
