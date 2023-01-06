import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/three_product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'delegations_offer_screen.dart';
import 'discount.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  _ProductsScreenState createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
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
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) =>
                                              const HomePage(),
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
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
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
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
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
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                                const SizedBox(height: 3),
                                                Container(
                                                  width: 5,
                                                  height: 5,
                                                  color: Colors.white,
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ), // first shape which contain 3 rows and columns
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: 5,
                                                height: 5,
                                                color: brownColor,
                                              ),
                                              const SizedBox(width: 3),
                                              Container(
                                                width: 5,
                                                height: 5,
                                                color: brownColor,
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
                                                color: brownColor,
                                              ),
                                              const SizedBox(width: 3),
                                              Container(
                                                width: 5,
                                                height: 5,
                                                color: brownColor,
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
                                                color: brownColor,
                                              ),
                                              const SizedBox(width: 3),
                                              Container(
                                                width: 5,
                                                height: 5,
                                                color: brownColor,
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 3,
                                          ),
                                        ],
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
                  borderRadius: BorderRadius.circular(30),
                ),
                margin: const EdgeInsets.only(top: 20),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 20,
                    ),
                    label: const Text("ابحث هنا"),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(width: 1, color: boxColor),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
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
                                "الدمام",
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
                                "الجديد ",
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
