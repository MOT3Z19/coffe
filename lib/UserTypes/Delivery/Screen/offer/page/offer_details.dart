import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/Orders/page/order2.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../../Orders/page/order_details.dart';

class OfferDetails extends StatefulWidget {
  const OfferDetails({Key? key}) : super(key: key);

  @override
  _OfferDetailsState createState() => _OfferDetailsState();
}

class _OfferDetailsState extends State<OfferDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(
                          context,
                        );
                      },
                      child: const Icon(
                        // added by vp
                        Icons.keyboard_arrow_left_rounded,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: size.width / 4,
                    ),
                    Text(
                      "تفاصيل العرض",
                      style: TextStyle(color: secondaryColor, fontSize: 20),
                    ),
                  ],
                ),
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height / 5,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            "assest/images/map4.png",
                          ),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child:
                          Center(child: Image.asset("assest/images/track.png")),
                    ),
                    Container(
                      margin: EdgeInsets.only(
                        top: size.height / 5.2,
                      ),
                      height: size.height,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 30),
                            child: const Text(
                              "تقديم عرض التوصيل",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                "٥ دقائق متبقية",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              const SizedBox(
                                width: 20,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const OrderDetails(),
                                    ),
                                  );
                                },
                                child: Container(
                                  margin:
                                      const EdgeInsets.symmetric(vertical: 3),
                                  child: const Text(
                                    " , طلب رقم ١٠٢  ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: const Text(
                              "قم باضافة العرض الخاص بك و التقديم على الطلب",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "٥٠ ريال",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: secondaryColor),
                                ),
                                const SizedBox(
                                  width: 5,
                                ),
                                const Text(
                                  "الحد الادنى للتقديم على الطلب",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(vertical: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                  height: size.height / 15,
                                  width: size.width / 4,
                                  child: const TextField(
                                    maxLines: 9,
                                    decoration: InputDecoration(
                                        border: OutlineInputBorder(),
                                        labelStyle: TextStyle(
                                            fontSize: 20, color: Colors.grey)),
                                  ),
                                ),
                                const Text(
                                  "القيمة المضافة للتوصيل  بالريال",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(
                              horizontal: size.width / 20,
                            ),
                            height: size.height / 8,
                            child: const TextField(
                              maxLines: 9,
                              decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: "وصف العرض الخاص بك..",
                                  labelStyle: TextStyle(
                                      fontSize: 20, color: Colors.grey)),
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
                                  builder: (context) => const OrderDetails(),
                                ),
                              );
                            },
                            child: Text(
                              "تفاصيل الطلب",
                              style: TextStyle(
                                  color: secondaryColor, fontSize: 25),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              showDialog2();
                            },
                            child: Container(
                              width: size.width / 1.1,
                              height: size.height / 13,
                              margin: EdgeInsets.symmetric(
                                  horizontal: size.width / 18,
                                  vertical: size.height / 50),
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Center(
                                child: Text(
                                  "ارسال العرض للعميل",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 24),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  showDialog2() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: AlertDialog(
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
                          child: const Icon(Icons.arrow_back)),
                    ],
                  ),
                  const Center(
                      child: Text(
                    "تم ارسال العرض",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              actions: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(Icons.navigate_before),
                    Container(
                        margin: EdgeInsets.only(left: size.width / 3),
                        child: const Text("102#")),
                    const Icon(Icons.navigate_next),
                  ],
                ),
                Container(
                  width: size.width,
                  height: size.height / 7,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: size.width / 1.5,
                        height: size.height / 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "كوفي",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assest/images/coffee4.png"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 1.5,
                        height: size.height / 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Card(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "كوفي",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              Image.asset("assest/images/coffee4.png"),
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
                Container(
                  margin: EdgeInsets.only(right: size.width / 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "  اسم العميل",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "عنوان المرسل له",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "  احمد محمد",
                        style: TextStyle(fontSize: 15, color: brownColor),
                      ),
                      Row(
                        children: [
                          Text(
                            "  حائل شارع الملك خالد",
                            style: TextStyle(fontSize: 15, color: brownColor),
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: brownColor,
                            size: 20,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 26, vertical: size.width / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        " المنطقة ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " المدينة ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " حائل ",
                        style: TextStyle(fontSize: 18, color: brownColor),
                      ),
                      Text(
                        " حائل ",
                        style: TextStyle(fontSize: 18, color: brownColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 26, vertical: size.width / 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        " التاريخ ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        " الوقت ",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 10,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        " ١٨/٧/١٩٩٨ ",
                        style: TextStyle(fontSize: 18, color: brownColor),
                      ),
                      Text(
                        " ١٢:٠٠ ",
                        style: TextStyle(fontSize: 18, color: brownColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: size.width / 18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        children: [
                          Text(
                            "  حائل شارع الملك خالد",
                            style: TextStyle(fontSize: 15, color: brownColor),
                          ),
                          Icon(
                            Icons.location_on_rounded,
                            color: brownColor,
                            size: 20,
                          ),
                        ],
                      ),
                      const Text(
                        "عنوان التوصيل منه",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.black38,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Center(
                    child: Text(
                  "الملاحظات",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                )),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 20),
                  child: const Text(
                      "Lorem ipsum dolor sit amet, lore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
                ),
                const Divider(
                  thickness: 1.0,
                  color: Colors.black38,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "السعر : ٢٠ ريال",
                      style: TextStyle(color: secondaryColor, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Order2(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.8,
                        height: size.height / 16,
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            " عروض حالية",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.of(context).pop();
                      },
                      child: Container(
                        width: size.width / 2.8,
                        height: size.height / 16,
                        margin: const EdgeInsets.symmetric(vertical: 25),
                        decoration: BoxDecoration(
                          color: secondaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "خريطة التوصيل",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          );
        });
  }
}
