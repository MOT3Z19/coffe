import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/ProductPage/page/product_page.dart';
import 'package:coffee_station/UserTypes/User/screen/StorePage/page/store_page.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/discount.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

class StoreProducts extends StatefulWidget {
  const StoreProducts({Key? key}) : super(key: key);

  @override
  _StoreProductsState createState() => _StoreProductsState();
}

class _StoreProductsState extends State<StoreProducts> {
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StorePage(),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width,
                      height: size.height / 3.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assest/images/zaraStore.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width / 20, vertical: 10),
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
                                        Icons.arrow_back_ios,
                                        color: Colors.white,
                                        size: 30,
                                      ),
                                    ),
                                  ],
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
                          Container(
                            width: size.width / 1.3,
                            height: size.height / 18,
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
                            margin: EdgeInsets.only(top: size.height / 35),
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
                          Container(
                            margin: EdgeInsets.only(top: size.height / 90),
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
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          " جديد",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          " المتجر",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
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
                                          " الاصناف",
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.navigate_before),
                  SizedBox(
                    width: size.width / 1.6,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const DiscountScreen(),
                        ),
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          "العروض",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    vertical: size.height / 120, horizontal: size.width / 20),
                width: size.width,
                height: size.height / 3.5, // need
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
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
                                  Container(
                                      width: size.width / 4,
                                      height: size.height / 30, // need
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
                                            style:
                                                TextStyle(color: Colors.white),
                                          )),
                                        ],
                                      )),
                                ],
                              ),
                              const Text("كوفي"),
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: size.width / 10,
                                        height: size.height / 30,
                                        decoration: const BoxDecoration(
                                            image: DecorationImage(
                                          image: AssetImage(
                                              "assest/images/leaf2.png"),
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
                                        style: TextStyle(
                                            color: secondaryColor,
                                            fontSize: 12),
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
                                          image: AssetImage(
                                              "assest/images/leaf.png"),
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
                        const SizedBox(
                          width: 20,
                        ),
                      ],
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.navigate_before),
                  SizedBox(
                    width: size.width / 2,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "وصل حديثاً",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  const Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.height / 30,
                ),
                width: size.width,
                height: size.height / 6.4, // need
                child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (BuildContext context, int index) {
                    return Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              const Text(
                                " كوفي",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              const Text(
                                " ريال 18",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    width: size.width / 10,
                                    height: size.height / 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("assest/images/leaf2.png"),
                                    )),
                                    child: const Center(
                                      child: Icon(
                                        Icons.favorite_border,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 90,
                                  ),
                                  Container(
                                    width: size.width / 10,
                                    height: size.height / 30,
                                    decoration: const BoxDecoration(
                                        image: DecorationImage(
                                      image:
                                          AssetImage("assest/images/leaf.png"),
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
                          ),
                          Image.asset(
                            "assest/images/coffee3.png",
                            // fit: BoxFit.fill,
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              ////

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Item(context),
                  Item(context),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Item(context),
                  Item(context),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Item(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
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
      ),
    );
  }
}
