import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/delegation_map.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/User/screen/catergories/page/product.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'delegation_page.dart';
import 'delegations_offer_screen.dart';
import 'delegations_offer_screen2.dart';
import 'discount.dart';

class delegationsList extends StatefulWidget {
  const delegationsList({Key? key}) : super(key: key);

  @override
  _delegationsListState createState() => _delegationsListState();
}

class _delegationsListState extends State<delegationsList> {
  String? selectedValue;
  List<String> items = [
    'جدد ',
    'قدامى ',
    'الكل ',
  ];
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
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
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
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const delegationsMap(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  "عرضهم على الخريطة",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 15),
                                ),
                              ),
                            ],
                          ),
                          const Text(
                            "المندوبين",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          const SizedBox(
                              //added by vp
                              //width: size.width / 2.7, // vp should be var
                              width: 30),
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
                  Text(
                    "عرض  جميع المندوبين ",
                    style: TextStyle(
                      fontSize: 20,
                      // decoration: TextDecoration.underline,
                      color: secondaryColor,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const delegationsOfferScreen2(),
                        ),
                      );
                    },
                    child: const Text(
                      "عروض المندوبين",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    // border: Border.all(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(5)),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    isExpanded: true,
                    hint: Row(
                      children: const [
                        Expanded(
                          child: Text(
                            '  المندوبين الجدد  ',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                            // overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                    items: items
                        .map((item) => DropdownMenuItem<String>(
                              value: item,
                              child: Text(
                                item,
                                style: const TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ))
                        .toList(),
                    value: selectedValue,
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value as String;
                      });
                    },
                    icon: const Icon(
                      Icons.keyboard_arrow_down_outlined,
                    ),
                    iconSize: 25,
                    iconEnabledColor: Colors.black,
                    buttonHeight: size.height / 20,
                    buttonWidth: size.width / 2,
                    buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                    buttonElevation: 2,
                    itemHeight: 40,
                    itemPadding: const EdgeInsets.only(left: 14, right: 14),
                    dropdownMaxHeight: 200,
                    dropdownWidth: 200,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      // color: Colors.redAccent,
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 5,
                    scrollbarAlwaysShow: true,
                    // offset: const Offset(-20, 0),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DelegationPage(),
                    ),
                  );
                },
                child: Stack(
                  alignment: Alignment.topCenter,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.all(size.height / 30),
                      child: SizedBox(
                        width: size.width / 1.2,
                        height: size.height / 3.3,
                        child: Card(
                          child: Column(
                            //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Icon(Icons.cancel_outlined),
                                  Icon(Icons.favorite_border),
                                ],
                              ),
                              const SizedBox(
                                height: 30,
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
                                    itemSize: 20,
                                    // itemPadding: EdgeInsets.symmetric(horizontal: 2.0),
                                    itemBuilder: (context, _) => const Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                    ),
                                    onRatingUpdate: (rating) {},
                                  ),
                                ),
                              ),
                              const Divider(
                                thickness: 1.0,
                              ),
                              IntrinsicHeight(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Column(
                                      children: const [
                                        Text(
                                          "9999",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          "عدد الرحلات",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    const VerticalDivider(
                                      //color: Colors.black,
                                      thickness: 1,
                                    ),
                                    Column(
                                      children: const [
                                        Text(
                                          "9999",
                                          style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        Text(
                                          " سنوات",
                                          style: TextStyle(fontSize: 18),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
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
                                image: AssetImage("assest/images/man.jpg"))),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
