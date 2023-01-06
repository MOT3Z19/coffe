import 'dart:ui';

import 'package:coffee_station/UserTypes/User/screen/Chat/page/chat_details_page.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/home_page.dart';
import 'package:coffee_station/UserTypes/User/screen/MyOrders/page/order_rating.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class PaymentMap5 extends StatefulWidget {
  const PaymentMap5({Key? key}) : super(key: key);

  @override
  State<PaymentMap5> createState() => _PaymentMap5State();
}

class _PaymentMap5State extends State<PaymentMap5> {
  String? selectedValue;
  List<String> items = ['#200', '#300', '#400'];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding:
              EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
          child: SingleChildScrollView(
            child: Container(
              width: size.width,
              height: size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    "assest/images/map.png",
                  ),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height / 6,
                        width: size.width / 13,
                      ),
                      InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const ChatDetailsPage(),
                              ),
                            );
                          },
                          child: const Icon(Icons.chat_outlined)),
                      SizedBox(
                        width: size.width / 10,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            isExpanded: true,
                            hint: Row(
                              children: const [
                                Expanded(
                                  child: Text(
                                    ' # رقم الطلب 100   ',
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
                            buttonPadding:
                                const EdgeInsets.only(left: 14, right: 14),
                            buttonElevation: 2,
                            itemHeight: 40,
                            itemPadding:
                                const EdgeInsets.only(left: 14, right: 14),
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
                    ],
                  ),
                  Container(
                    margin:
                        const EdgeInsets.symmetric(vertical: 1, horizontal: 10),
                    width: size.width,
                    height: size.height / 5.7,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("تحديد الموقع "),
                          Text(
                            " النقرة , حائل 5345 , المملكة العربية السعودية",
                            style: TextStyle(
                              color: secondaryColor,
                            ),
                          ),
                          const Text("مكان المرسل اليه الطلب "),
                          const Text(
                            "انقر لتحديد موقع الاستلام ",
                            style: TextStyle(color: Colors.red),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 30),
                    child: Image.asset("assest/images/track.png"),
                  ),
                  InkWell(
                    onTap: () {
                      showModalBottomSheet(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        context: context,
                        builder: (context) {
                          return Wrap(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 10),
                                width: size.width / 1.1,
                                height: size.height / 3.7,
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      margin: const EdgeInsets.only(right: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          InkWell(
                                              onTap: () {
                                                Navigator.of(context).pop();
                                              },
                                              child:
                                                  const Icon(Icons.arrow_back)),
                                          const Text(
                                            " احمد الاغا ",
                                            style: TextStyle(fontSize: 25),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      margin: const EdgeInsets.only(right: 30),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            " تبقى ٥ دقائق للوصول ",
                                            style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.red),
                                          ),
                                        ],
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
                                                    const HomePage(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: size.width / 4,
                                            height: size.height / 22,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 5),
                                            decoration: const BoxDecoration(
                                              color: Colors.black,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10)),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "مواصلة التسوق ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
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
                                                    const OrderRating(),
                                              ),
                                            );
                                          },
                                          child: Container(
                                            width: size.width / 4,
                                            height: size.height / 20,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 20),
                                            decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "تقييم ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                        InkWell(
                                          onTap: () {
                                            showDialog2();
                                          },
                                          child: Container(
                                            width: size.width / 4,
                                            height: size.height / 20,
                                            margin: const EdgeInsets.symmetric(
                                                horizontal: 10, vertical: 20),
                                            decoration: BoxDecoration(
                                              color: secondaryColor,
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(10)),
                                            ),
                                            child: const Center(
                                              child: Text(
                                                "شكوى ",
                                                style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 15),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: size.width / 8,
                          height: size.width / 8,
                          margin: const EdgeInsets.only(right: 10),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)),
                          child: const Icon(
                            Icons.send,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
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
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "قدم الشكوى",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            actions: <Widget>[
              Container(
                margin:
                    const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "اكتب هنا ...",
                      labelStyle: TextStyle(fontSize: 20, color: Colors.grey)),
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تأكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
