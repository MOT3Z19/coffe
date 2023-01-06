// import 'package:coffee_station/UserTypes/User/screen/MyAccount/page/my_profile.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

import 'delivery_account.dart';

class DeliveryPersonalInforamtion extends StatefulWidget {
  const DeliveryPersonalInforamtion({Key? key}) : super(key: key);

  @override
  _DeliveryPersonalInforamtionState createState() =>
      _DeliveryPersonalInforamtionState();
}

class _DeliveryPersonalInforamtionState
    extends State<DeliveryPersonalInforamtion> {
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
          child: Column(
            children: [
              const SizedBox(
                height: 90,
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DeliveryAccount(),
                        ),
                      );
                    },
                    child: Icon(
                      Icons.keyboard_arrow_left_rounded,
                      color: Colors.black,
                      size: 30,
                    ),
                  ),
                  SizedBox(
                    width: size.width / 4.8,
                  ),
                  const Center(
                    child: Text(
                      " تعديل البيانات الشخصية",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
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
                        Icons.edit_outlined,
                        color: Colors.white,
                      )))
                ],
              ),
              const Text(
                "ايما ستون",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "الاسم كامل",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: " ايما ستون",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "اسم المستخدم ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: " ايما ستون",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: " الموقع ",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "  حائل شارع الملك خالد",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 10),
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
                    dropdownMaxHeight: 380,
                    dropdownWidth: 380,
                    dropdownPadding: null,
                    dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    dropdownElevation: 8,
                    scrollbarRadius: const Radius.circular(40),
                    scrollbarThickness: 5,
                    scrollbarAlwaysShow: true,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              //////////
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                          text: "رقم الهوية",
                          style: TextStyle(fontSize: 18, color: Colors.black),
                          children: <TextSpan>[]),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: " 0009876554 ",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "تاريخ الميلاد ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "18/7/1998 ",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "رقم الهاتف ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "0000000008 ",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "  تاريخ انتهاء الرخصة ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "19/2/2202",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "رقم السيارة",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "19992202",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "مصنع السيارة ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "BMW Company",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "  نوع السيارة ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "BMW 2022",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width / 9,
                    ),
                    child: RichText(
                      text: const TextSpan(
                        text: "  موديل السيارة  ",
                        style: TextStyle(fontSize: 18, color: Colors.black),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 12, vertical: 1),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "BMW 2022",
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 4,
                        height: size.height / 10,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
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
                      ),
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
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 4,
                        height: size.height / 10,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
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
                      ),
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
                            style: TextStyle(fontSize: 16, color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        width: size.width / 4,
                        height: size.height / 10,
                        decoration: BoxDecoration(
                          color: boxColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        margin: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 20),
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
                      ),
                    ],
                  ),
                ],
              ),
              //////////
              Container(
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
                    "حفظ",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
