import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import 'admin_profile.dart';
import 'admin_side_drawer.dart';
import 'delegation_details.dart';

class Complaints extends StatefulWidget {
  const Complaints({Key? key}) : super(key: key);

  @override
  _ComplaintsState createState() => _ComplaintsState();
}

class _ComplaintsState extends State<Complaints> {
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
          child: AdminSideDrawer(),
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
                                          const AdminProfile(),
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
                              Icon(
                                Icons.search,
                                color: Colors.white,
                                size: 30,
                              ),
                            ],
                          ),
                          // SizedBox(
                          //   width: 120,
                          // ),
                          Center(
                            child: Text(
                              "رد على الشكاوي ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: Icon(
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
                height: 10,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: size.height / 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      //" شكاوي عامة ",
                      " عامة ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    const Text(
                      // " شكاوي من مناديب ",
                      "   تجار ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      // " شكاوي من مناديب ",
                      "   مناديب ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      //  "شكاوي من زبائن  ",
                      "  زبائن  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: secondaryColor,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DelegationDetails(),
                        ),
                      );
                    },
                    child: Text(
                      " خالد موسى ",
                      style: TextStyle(
                        fontSize: 15,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  const Text(
                    "على المندوب",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "  ابراهيم موسى",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " شكوى الزبون احمد موسى",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "#102 طلب",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " : الشكوى بسبب ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: size.width / 1.2,
                height: size.height / 6.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "تاخير في توصيل الطلب و ارتفاع الاسعار",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown),
                        child: Center(
                          child: Text(
                            "ارسال رد",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.3,
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DelegationDetails(),
                        ),
                      );
                    },
                    child: Text(
                      " خالد موسى ",
                      style: TextStyle(
                        fontSize: 15,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  const Text(
                    "على المندوب",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "  ابراهيم موسى",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " شكوى الزبون احمد موسى",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "عامة ",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " : الشكوى بسبب ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: size.width / 1.2,
                height: size.height / 6.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "تاخير في توصيل الطلب و ارتفاع الاسعار",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown),
                        child: Center(
                          child: Text(
                            "ارسال رد",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.3,
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    " خالد موسى ",
                    style: TextStyle(
                      fontSize: 15,
                      color: secondaryColor,
                    ),
                  ),
                  const Text(
                    "على المندوب",
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    "  ابراهيم موسى",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " شكوى الزبون احمد موسى",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "عامة ",
                    style: TextStyle(color: secondaryColor, fontSize: 15),
                  ),
                  const Text(
                    " : الشكوى بسبب ",
                    style: TextStyle(fontSize: 15),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 20),
                width: size.width / 1.2,
                height: size.height / 6.5,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[200],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "تاخير في توصيل الطلب و ارتفاع الاسعار",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Container(
                        width: 70,
                        height: 30,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.brown),
                        child: Center(
                          child: Text(
                            "ارسال رد",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: size.width / 1.3,
                child: const Divider(
                  color: Colors.grey,
                  thickness: 2,
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
            title: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(child: Text("ادخل عنوان الرسالة")),
              ],
            ),
            actions: <Widget>[
              Container(
                width: size.width,
                height: size.height / 19,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20, vertical: size.height / 65),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: " الرد  ",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "ارسال",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
