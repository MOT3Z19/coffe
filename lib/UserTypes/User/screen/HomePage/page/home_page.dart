import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/ProductPage/page/product_page.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/delegations_offer_screen.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/discount.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/stores.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../../sweet_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Color textColor = Colors.blue;
  double x = 0.0;
  double y = 0.0;
  void _updateLocation(PointerEvent details) {
    setState(() {
      textColor = Colors.red;
      x = details.position.dx;
      y = details.position.dy;
    });
  }

  double sizedBox = 10.0;

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
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Text(
                            "الصفحة الرئيسية",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          SizedBox(
                            //added by vp
                            width: size.width / 3.8, // vp should be var
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
                margin: EdgeInsets.only(top: size.height / 40),
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
              SizedBox(
                // added by vp
                height: size.height / 60,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SweetPage(),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                      vertical: size.height / 35 * 0), // equate to 0 by
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        "الاصناف",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: size.width / 2.7,
                          // height: size.height / 7,
                          height: size.height / 7 / 1.5,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assest/images/juice.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: size.height / 17),
                            child: const Center(
                              child: Text(
                                "صنف العصائر",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: size.width / 2.7,
                          // height: size.height / 7,
                          height: size.height / 7 / 1.5,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assest/images/nut.png"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          child: Container(
                            margin: EdgeInsets.only(top: size.height / 17),
                            child: const Center(
                              child: Text(
                                "صنف المكسرات",
                                style: TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: size.width / 2,
                      //  height: size.height / 3.5,

                      height: size.height / 3.5 / 1.5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assest/images/sweets.png"),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Container(
                        margin: EdgeInsets.only(top: size.height / 4.5),
                        child: const Center(
                          child: Text(
                            "صنف الحلويات",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.height / 80 * 0,
                ),
                width: size.width,
                height: size.height / 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assest/images/veg.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/spacice.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/veg.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/spacice.png",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
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
                            builder: (context) => const StoreScreen(),
                          ),
                        );
                      },
                      child: MouseRegion(
                        onHover: _updateLocation,
                        child: Row(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text(
                              "المتاجر",
                              style: TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Icon(Icons.navigate_next),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: size.width / 80 * 0,
                ),
                width: size.width,
                height: size.height / 9,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Image.asset(
                      "assest/images/store1.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/store2.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/store1.png",
                      fit: BoxFit.fill,
                    ),
                    SizedBox(
                      width: sizedBox,
                    ),
                    Image.asset(
                      "assest/images/store2.png",
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ),
              SizedBox(
                // added by vp
                height: size.height / 30,
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
                    vertical: size.height / 70, horizontal: size.width / 20),
                width: size.width,
                height: size.height / 4.2,
                child: ListView.builder(
                  itemCount: 4,
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
                                  Image.asset(
                                    "assest/images/coffee4.png",
                                    fit: BoxFit.fill,
                                    width: size.width / 2.5,
                                    height: size.height / 8,
                                  ),
                                  Row(
                                    children: [
                                      Container(
                                          width: size.width / 5,
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
                                                size: 20,
                                              ),
                                              Center(
                                                  child: Text(
                                                "خصم 10 ",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              )),
                                            ],
                                          )),
                                      const SizedBox(
                                        width: 25,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                  margin: const EdgeInsets.only(left: 25),
                                  child: const Text("كوفي")),
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Stack(
                                        children: [
                                          Image.asset(
                                              "assest/images/leaf2.png"),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 3),
                                            child: const Icon(
                                              Icons.favorite_border,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        width: 35,
                                      ),
                                      const Text(
                                        "٧ ريال",
                                        style: TextStyle(fontSize: 12),
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Stack(
                                        children: [
                                          Image.asset("assest/images/leaf.png"),
                                          Container(
                                            margin: const EdgeInsets.symmetric(
                                                vertical: 3, horizontal: 3),
                                            child: const Icon(
                                              Icons.shopping_cart_outlined,
                                              color: Colors.white,
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
                          width: sizedBox,
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
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Row(children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ProductPage(),
                              ),
                            );
                          },
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90.0),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 20.0,
                                ),
                              ],
                            ),
                            child: Card(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      const Text(
                                        " كوفي",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      const Text(
                                        " ريال 18",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
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
                                          const SizedBox(
                                            width: 90,
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
                                  ),
                                  Image.asset(
                                    "assest/images/coffee3.png",
                                    // fit: BoxFit.fill,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ]);
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
