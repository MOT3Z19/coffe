import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/sp_sweet_page.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/StorePage/page/add_product.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/product/sp_product_page.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'add_new_branch.dart';

class AddProductToBranch extends StatefulWidget {
  const AddProductToBranch({Key? key}) : super(key: key);

  @override
  _AddProductToBranchState createState() => _AddProductToBranchState();
}

class _AddProductToBranchState extends State<AddProductToBranch> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  bool value = false;
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
          child: ServiceProviderSideDrawer(),
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
                          Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const AddNewBranch(),
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
                            ],
                          ),
                          const Center(
                            child: Text(
                              "اختر منتجات للفرع الجديد",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          // SizedBox(
                          //   width: size.width / 5,
                          // ),
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
                height: 10,
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
                margin: const EdgeInsets.only(top: 3),
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
                              "المنطقة",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
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
                              " زارا",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 15),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceProviderSweetPage(),
                          ),
                        );
                      },
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
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 18, vertical: size.height / 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const AddProducts(),
                          ),
                        );
                      },
                      child: Row(
                        children: [
                          Text(
                            "آضف منتج جديد",
                            style: TextStyle(color: secondaryColor),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(Icons.add_circle_outline_outlined,
                              color: secondaryColor),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          "اختر الكل",
                          style: TextStyle(
                            fontSize: 25,
                          ),
                        ),
                        Checkbox(
                          value: value,
                          onChanged: (valuee) {
                            setState(() {
                              value = valuee!;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Items(context),
              const SizedBox(
                height: 15,
              ),
              Items(context),
              const SizedBox(
                height: 15,
              ),
              Items(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget Items(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      child: Row(
        children: [
          const SizedBox(
            width: 8,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ServiceProviderProductPage(),
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
                      width: size.width / 3.3,
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
                                  style: TextStyle(color: Colors.white),
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
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset("assest/images/empty_leaf.png"),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 3),
                          child: Icon(
                            Icons.check,
                            color: brownColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: const [
                        Text("كوفي"),
                        Text(
                          "٧ ريال",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ServiceProviderProductPage(),
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
                      width: size.width / 3.3,
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
                                  style: TextStyle(color: Colors.white),
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
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset("assest/images/empty_leaf.png"),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 3),
                          child: Icon(
                            Icons.check,
                            color: brownColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: const [
                        Text("كوفي"),
                        Text(
                          "٧ ريال",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            width: 4,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ServiceProviderProductPage(),
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
                      width: size.width / 3.3,
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
                                  style: TextStyle(color: Colors.white),
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
                Row(
                  children: [
                    Stack(
                      children: [
                        Image.asset("assest/images/empty_leaf.png"),
                        Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 3, horizontal: 3),
                          child: Icon(
                            Icons.check,
                            color: brownColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 40,
                    ),
                    Column(
                      children: const [
                        Text("كوفي"),
                        Text(
                          "٧ ريال",
                          style: TextStyle(fontSize: 12),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
