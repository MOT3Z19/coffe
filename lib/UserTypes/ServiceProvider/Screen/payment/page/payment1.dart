import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ServiceProviderPayment1 extends StatefulWidget {
  const ServiceProviderPayment1({Key? key}) : super(key: key);

  @override
  _ServiceProviderPayment1State createState() =>
      _ServiceProviderPayment1State();
}

class _ServiceProviderPayment1State extends State<ServiceProviderPayment1> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _n = 0;
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
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                              SizedBox(
                                width: size.width / 4,
                              ),
                              const Text(
                                "تفاصيل الطلب ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                " توصيل عن طريق المندوب",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              SizedBox(
                                width: size.width / 5.5,
                              ),
                              const Center(
                                child: Text(
                                  "مكتمل  ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 2.8,
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int ind) {
                    return Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 10),
                      width: size.width,
                      height: size.height / 4,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: size.width / 2,
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: const [
                                          Text(
                                            "120#",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                          Text(
                                            "كوفي",
                                            style: TextStyle(fontSize: 20),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Container(
                                            width: size.width / 4,
                                            height: size.height / 35,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: [
                                                InkWell(
                                                    child: const Text(" - ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                                Text('1',
                                                    style: const TextStyle(
                                                        fontSize: 20.0)),
                                                InkWell(
                                                    child: const Text(" + ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                              ],
                                            ),
                                          ),
                                          const Text(
                                            " الكمية",
                                            style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 90,
                                          ),
                                          child: const Text(
                                            "٥٥ ريال",
                                            style: TextStyle(fontSize: 19),
                                          )),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 70,
                                          ),
                                          child: const Text(
                                            " اضافة التفاصيل",
                                            style: TextStyle(
                                                fontSize: 19,
                                                fontWeight: FontWeight.bold),
                                          )),
                                      Container(
                                          margin: const EdgeInsets.only(
                                            left: 50,
                                          ),
                                          child: const Text(
                                            "سكر،توفي،حليب ",
                                            style: TextStyle(
                                                fontSize: 17,
                                                color: Colors.grey),
                                          )),
                                    ],
                                  ),
                                ),
                                Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Image.asset(
                                            "assest/images/coffee4.png"),
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
                                                      Icons
                                                          .local_fire_department,
                                                      color: Colors.white,
                                                    ),
                                                    Center(
                                                        child: Text(
                                                      "خصم 10%",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    )),
                                                  ],
                                                )),
                                          ],
                                        ),
                                      ],
                                    ),
                                    Container(
                                        margin: const EdgeInsets.only(top: 20),
                                        child: const Text("٧ ريال")),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      "اسم المندوب",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "اسم العميل",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " ابراهيك احمد",
                      style: TextStyle(color: brownColor),
                    ),
                    Text(
                      " محمد احمد",
                      style: TextStyle(color: brownColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.only(left: size.width / 2.8),
                child: Row(
                  children: [
                    Container(
                      // margin: EdgeInsets.only(left: size.width / 1.5),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Text(
                                "حائل شارع الملك خالد",
                                style: TextStyle(color: brownColor),
                              ),
                              Icon(
                                Icons.location_on_sharp,
                                color: brownColor,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Text(
                      " :  عنوان المرسل له الطلب",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " المنطقة",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "المدينة",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 9),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "حائل",
                      style: TextStyle(color: brownColor),
                    ),
                    Text(
                      "حائل",
                      style: TextStyle(color: brownColor),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      " التاريخ",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "وقت التسليم",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "٣١-٥-١٩٩٩٨",
                      style: TextStyle(color: brownColor),
                    ),
                    Text(
                      "٨:٠٠",
                      style: TextStyle(color: brownColor),
                    ),
                  ],
                ),
              ),
              DottedLine(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    " ٨ ريال",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    " تكلفة الطلب",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    " صفر ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    " تكلفة التوصيل",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    " ٨ ريال",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    " الخصم",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    " ٨ ريال",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    " المجموع",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DottedLine(),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "-  ٨  + ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Text(
                    " اتصالات العميل",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              DottedLine(),
              const SizedBox(
                height: 20,
              ),
              const Center(
                  child: Text(
                "تقييم المندوب",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Card(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const CircleAvatar(
                        backgroundImage: AssetImage("assest/images/man.jpg"),
                        maxRadius: 50,
                      ),
                      const Text(
                        "احمد محمود ",
                        style: TextStyle(fontSize: 20),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RatingBar.builder(
                            initialRating: 5,
                            minRating: 1,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemSize: 35,
                            itemBuilder: (context, _) => const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            onRatingUpdate: (rating) {},
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(
                          horizontal: size.width / 20,
                        ),
                        height: size.height / 9.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Center(child: Text("احمد سائق جيد وامين ")),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
