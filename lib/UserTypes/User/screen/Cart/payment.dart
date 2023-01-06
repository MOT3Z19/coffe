import 'dart:ui';

import 'package:coffee_station/UserTypes/User/screen/GoogleMaps/page/payment_map.dart';
import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int _n = 1;
  bool checkedValue = false;
  bool checkedValue2 = false;
  String? selectedValue;
  List<String> items = [
    'من خلال المتجر',
    'من خلال المندوب',
    'الاستلام في المتجر',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: Theme(
          data: Theme.of(context).copyWith(
            canvasColor:
                Colors.black, //This will change the drawer background to black.
          ),
          child: SideDrawer(),
        ),
        resizeToAvoidBottomInset: false,
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
                      //  margin: EdgeInsets.symmetric(horizontal: size.width / 20),
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
                                  Icons.keyboard_arrow_left_rounded,
                                  color: Colors.white,
                                  size: 40,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                " بيانات الدفع",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                "اجمالي الطلب : ٧٠ ريال",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
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
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(Icons.navigate_before),
                  Icon(Icons.navigate_next),
                ],
              ),
              SizedBox(
                width: size.width,
                height: size.height / 2.7,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 3),
                      width: size.width / 1.1, // it was without div.
                      height: size.height / 2.5,
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
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "120#",
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
                                            height: size.height / 33,
                                            decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                            ),
                                            child: Center(
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceAround,
                                                children: [
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          if (_n != 0) _n--;
                                                        });
                                                      },
                                                      child: const Text(" - ",
                                                          style: TextStyle(
                                                              fontSize: 20.0))),
                                                  Text('$_n',
                                                      style: const TextStyle(
                                                          fontSize: 20.0)),
                                                  InkWell(
                                                      onTap: () {
                                                        setState(() {
                                                          _n++;
                                                        });
                                                      },
                                                      child: const Text(" + ",
                                                          style: TextStyle(
                                                              fontSize: 20.0))),
                                                ],
                                              ),
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
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showDialog1();
                                              },
                                              child: Text(
                                                "تعديل التفاصيل",
                                                style: TextStyle(
                                                    color: secondaryColor),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "  سكر،  توفي،   حليب",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: size.width / 5,
                                            height: size.height / 35,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 15,
                                            ),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ": كود الخصم",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showDialog2();
                                              },
                                              child: Text(
                                                "أضف ملاحظاتك عالطلب ",
                                                style: TextStyle(
                                                    color: secondaryColor),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 3),
                      width: size.width,
                      height: size.height / 2.5,
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
                                            MainAxisAlignment.end,
                                        children: const [
                                          Text(
                                            "120#",
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
                                                    onTap: () {
                                                      setState(() {
                                                        if (_n != 0) _n--;
                                                      });
                                                    },
                                                    child: const Text(" - ",
                                                        style: TextStyle(
                                                            fontSize: 20.0))),
                                                Text('$_n',
                                                    style: const TextStyle(
                                                        fontSize: 20.0)),
                                                InkWell(
                                                    onTap: () {
                                                      setState(() {
                                                        _n++;
                                                      });
                                                    },
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
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            InkWell(
                                              onTap: () {
                                                showDialog1();
                                              },
                                              child: Text(
                                                "تعديل التفاصيل",
                                                style: TextStyle(
                                                    color: secondaryColor),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
                                      const Text(
                                        "  سكر،  توفي،   حليب",
                                        style: TextStyle(fontSize: 19),
                                      ),
                                      Row(
                                        //mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Container(
                                            width: size.width / 5,
                                            height: size.height / 35,
                                            margin: const EdgeInsets.symmetric(
                                              horizontal: 15,
                                            ),
                                            child: const TextField(
                                              decoration: InputDecoration(
                                                enabledBorder:
                                                    OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      width: 1,
                                                      color: Colors.grey),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const Text(
                                            ": كود الخصم",
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        margin:
                                            const EdgeInsets.only(right: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.end,
                                          children: [
                                            InkWell(
                                              onTap: () {
                                                showDialog2();
                                              },
                                              child: Text(
                                                "أضف ملاحظاتك عالطلب ",
                                                style: TextStyle(
                                                    color: secondaryColor),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            Icon(Icons.add_circle_outline,
                                                size: 25,
                                                color: secondaryColor),
                                          ],
                                        ),
                                      ),
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
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 5),
                    decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '  توصيل من المتجر  ',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
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
                  const Text(
                    "نوعية التوصيل",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2,
                    height: size.height / 20,
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " كود الخصم",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 2,
                    height: size.height / 20,
                    margin: const EdgeInsets.symmetric(vertical: 3),
                    child: const TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 1, color: Colors.grey),
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    " وقت التسليم",
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
              const Divider(
                thickness: 1.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    width: 140,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text("الكتروني "), //    <-- label
                      value: checkedValue,
                      onChanged: (value) {
                        setState(() {
                          checkedValue = value!;
                        });
                      },
                    ),
                  ),
                  SizedBox(
                    width: 130,
                    height: 70,
                    child: CheckboxListTile(
                      title: const Text(" كاش"), //    <-- label
                      value: checkedValue2,
                      onChanged: (value) {
                        setState(() {
                          checkedValue2 = value!;
                        });
                      },
                    ),
                  ),
                  Container(
                    //  margin: EdgeInsets.only(right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Text(
                          ":طريقة الدفع",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
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
                          builder: (context) => const PaymentMap(),
                        ),
                      );
                    },
                    child: Container(
                      width: size.width / 2.4,
                      height: size.height / 17,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "تحديد عنوان الاستلام",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog4();
                    },
                    child: Container(
                      width: size.width / 2.4,
                      height: size.height / 17,
                      margin: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "تاكيد",
                          style: TextStyle(color: Colors.white, fontSize: 18),
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
                        child: const Icon(Icons.arrow_back)),
                  ],
                ),
                const Center(
                    child: Text(
                  "اضف التفاصيل",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            //content: Text("body"),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " توفي",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 3.5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        " سكر زيادة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 5,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "حليب",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "بدون سكر ",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width / 3,
                    height: size.height / 18.5,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Center(
                      child: Text(
                        "  كريمة",
                        style: TextStyle(color: Colors.black, fontSize: 15),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 13,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
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
                  "أضف ملاحظاتك على الطلب ",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            //content: Text("body"),
            actions: <Widget>[
              Container(
                //  height: 200,
                child: Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 35, vertical: 10),
                      child: const TextField(
                        keyboardType: TextInputType.multiline,
                        maxLength: 70,
                        decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            hintText: "  اكتب هنا ",
                            labelStyle:
                                TextStyle(fontSize: 15, color: Colors.black)),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width / 1.1,
                height: size.height / 16,
                margin:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: const Center(
                  child: Text(
                    "تاكيد",
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ],
          );
        });
  }

  showDialog4() {
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
                  "  تم قبول طلبك لدى التاجر وجاري التجهيز",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
              ],
            ),
            actions: <Widget>[
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const InkWell(
                      child: Text(
                        "تتبع الاشعارات",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                    const Text("رقم التواصل "),
                    const Text("00966505926024"),
                    Image.asset("assest/images/confiramtionImage.png"),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }
}
