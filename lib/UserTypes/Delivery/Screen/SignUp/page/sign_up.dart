import 'dart:ui';

import 'package:coffee_station/UserTypes/Delivery/Screen/Bunch/bunch.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class DeliverySignUp extends StatefulWidget {
  const DeliverySignUp({Key? key}) : super(key: key);

  @override
  _DeliverySignUpState createState() => _DeliverySignUpState();
}

class _DeliverySignUpState extends State<DeliverySignUp> {
  String? selectedValue;
  List<String> items = [
    'هوية وطينة',
    'جواز سفر',
    'اخرى',
  ];
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const InkWell(
                            child: Icon(
                              // added by vp
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          SizedBox(
                            width: size.width / 4,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                " أضف بياناتك  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                " أحمد محمود  ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Stack(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assest/images/man.jpg"),
                      maxRadius: 50,
                    ),
                    Container(
                        margin: EdgeInsets.only(
                            top: size.width / 4, left: size.width / 11),
                        width: size.width / 16,
                        height: size.width / 16,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: secondaryColor,
                        ),
                        child: const Center(
                            child: Icon(
                          Icons.add,
                          color: Colors.white,
                        )))
                  ],
                ),
                const Text(
                  "اضف صورتك",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Field(context, " احمد محمود "),
                Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20,
                    vertical: size.width / 40,
                  ),
                  child: const TextField(
                    readOnly: true,
                    decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                        hintText: " Omar@gmail.com",
                        hintStyle: TextStyle(color: Colors.black)),
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
                        labelText: "اكتب نبذة عنك ...",
                        labelStyle:
                            TextStyle(fontSize: 20, color: Colors.grey)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width / 20,
                        vertical: size.width / 40,
                      ),
                      decoration: const BoxDecoration(
                        // color: Colors.white,
                        border: Border(
                          bottom: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: const Text(
                            "نوع الهوية",
                            style: TextStyle(fontSize: 18, color: Colors.black),
                          ),
                          isExpanded: true,

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
                          buttonWidth: size.width / 1.1,
                          buttonPadding: const EdgeInsets.only(right: 14),
                          buttonElevation: 2,
                          itemHeight: 40,
                          //  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 380,
                          dropdownWidth: 380,
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

                    Field(context, " رقم الهوية "),
                    Field(context, "  تاريخ الميلاد "),
                    Field(context, "رقم الهاتف "),
                    Field(context, "تاريخ انتهاء الرخصة "),
                    Field(context, "رقم السيارة"),
                    Field(context, "مصنع السيارة"),
                    Field(context, "نوع السيارة"),
                    Field(context, "موديل السيارة"),

                    const SizedBox(
                      height: 20,
                    ),
                    //
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: size.width / 30,
                              ),
                              child: const Center(
                                child: Text(
                                  "    صورة السيارة ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Image(context),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: size.width / 30,
                              ),
                              child: const Center(
                                child: Text(
                                  "    صورة رخصة السيارة ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Image(context),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(
                                vertical: size.width / 30,
                              ),
                              child: const Center(
                                child: Text(
                                  "    صورة الهوية ",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.black),
                                ),
                              ),
                            ),
                            Image(context),
                          ],
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BunchScreen(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 1.1,
                        height: size.height / 13,
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width / 18, vertical: 30),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "تاكيد",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget Field(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width / 20,
        vertical: size.width / 40,
      ),
      child: TextField(
        decoration: InputDecoration(
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(width: 1, color: Colors.grey),
            ),
            hintText: "$title",
            hintStyle: const TextStyle(color: Colors.black)),
      ),
    );
  }

  Widget Image(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 4,
      height: size.height / 10,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
      child: const Center(
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: Center(
              child: Icon(
                Icons.file_upload,
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
