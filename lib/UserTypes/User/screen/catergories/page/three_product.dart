import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'delegations_offer_screen.dart';
import 'discount.dart';

class ThreeProductsScreen extends StatefulWidget {
  const ThreeProductsScreen({Key? key}) : super(key: key);

  @override
  _ThreeProductsScreenState createState() => _ThreeProductsScreenState();
}

class _ThreeProductsScreenState extends State<ThreeProductsScreen> {
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
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(
                                        context,
                                      );
                                    },
                                    child: const Icon(
                                      // added by vp
                                      Icons.keyboard_arrow_left_rounded,
                                      color: Colors.white,
                                      size: 40,
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ThreeProductsScreen(),
                                            ),
                                          );
                                        },
                                        child: Row(
                                          children: [
                                            Column(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              width: 3,
                                            ),
                                            Column(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: brownColor,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ), // first shape which contain 3 rows and columns
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) =>
                                                  const ProductsScreen(),
                                            ),
                                          );
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(width: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 3,
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: size.width / 4, // vp should be var
                              ),
                            ],
                          ),
                          const Text(
                            "المنتجات",
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
                              color: brownColor,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Center(
                              child: Text(
                                "المنتجات",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
              Item(context),
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
        SizedBox(
          width: size.width / 3.5,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assest/images/coffee4.png"),
                  Container(
                      width: size.width / 6,
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
                            size: 15,
                          ),
                          Center(
                              child: Text(
                            "خصم 10%",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ],
                      )),
                ],
              ),
              const Text("كوفي"),
              Row(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf2.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "متجر زارا",
                        style: TextStyle(color: secondaryColor, fontSize: 10),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "٧ ريال",
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width / 3.5,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assest/images/coffee4.png"),
                  Container(
                      width: size.width / 6,
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
                            size: 15,
                          ),
                          Center(
                              child: Text(
                            "خصم 10%",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ],
                      )),
                ],
              ),
              const Text("كوفي"),
              Row(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf2.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "متجر زارا",
                        style: TextStyle(color: secondaryColor, fontSize: 10),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "٧ ريال",
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width / 3.5,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset("assest/images/coffee4.png"),
                  Container(
                      width: size.width / 6,
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
                            size: 15,
                          ),
                          Center(
                              child: Text(
                            "خصم 10%",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          )),
                        ],
                      )),
                ],
              ),
              const Text("كوفي"),
              Row(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf2.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        "متجر زارا",
                        style: TextStyle(color: secondaryColor, fontSize: 10),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      const Text(
                        "٧ ريال",
                        style: TextStyle(fontSize: 10),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Stack(
                        children: [
                          Image.asset(
                            "assest/images/leaf.png",
                            width: 20,
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 3, horizontal: 3),
                            child: const Icon(
                              Icons.shopping_cart_outlined,
                              color: Colors.white,
                              size: 12,
                            ),
                          ),
                        ],
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
