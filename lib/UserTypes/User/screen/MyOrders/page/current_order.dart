import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'order_details.dart';

class CurrentOrders extends StatefulWidget {
  const CurrentOrders({Key? key}) : super(key: key);

  @override
  _CurrentOrdersState createState() => _CurrentOrdersState();
}

class _CurrentOrdersState extends State<CurrentOrders> {
  String? selectedValue1;
  List<String> items1 = [
    '٢/٣/٢٠٢٠',
    '٣/٣/٢٠٢٠',
    '٥/٣/٢٠٢٠',
  ];
  String? selectedValue2;
  List<String> items2 = [
    'الساعة ٢',
    'الساعة٥',
    'الساعة ٨',
  ];
  String? selectedValu3;
  List<String> items3 = [
    '#١٠٤',
    '#١٠٣',
    '#١٠٢',
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
                          const Center(
                            child: Text(
                              " طلباتي",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
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
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    " طلباتي السابقة",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const Text(
                    " طلباتي القادمة",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    " طلباتي الحالية",
                    style: TextStyle(
                      fontSize: 20,
                      color: secondaryColor,
                      //  decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
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
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '  رقم الطلب ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items3
                            .map((item3) => DropdownMenuItem<String>(
                                  value: item3,
                                  child: Text(
                                    item3,
                                    style: const TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ))
                            .toList(),
                        value: selectedValu3,
                        onChanged: (value) {
                          setState(() {
                            selectedValu3 = value as String;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                        iconSize: 25,
                        iconEnabledColor: Colors.black,
                        buttonHeight: size.height / 20,
                        buttonWidth: size.width / 3.6,
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
                  Container(
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
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '  وقت الطلب ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items2
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
                        value: selectedValue2,
                        onChanged: (value) {
                          setState(() {
                            selectedValue2 = value as String;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                        iconSize: 25,
                        iconEnabledColor: Colors.black,
                        buttonHeight: size.height / 20,
                        buttonWidth: size.width / 3.6,
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
                  Container(
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
                        borderRadius: BorderRadius.circular(5)),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        isExpanded: true,
                        hint: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                '  تاريخ الطلب ',
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.black,
                                ),
                                // overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        items: items1
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
                        value: selectedValue1,
                        onChanged: (value) {
                          setState(() {
                            selectedValue1 = value as String;
                          });
                        },
                        icon: const Icon(
                          Icons.keyboard_arrow_down_outlined,
                        ),
                        iconSize: 25,
                        iconEnabledColor: Colors.black,
                        buttonHeight: size.height / 20,
                        buttonWidth: size.width / 3.4,
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
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "9:00 PM       18/7",
                style: TextStyle(fontSize: 18),
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
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const OrderDetails(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 2.4,
                        margin: EdgeInsets.symmetric(
                            vertical: size.width / 18, horizontal: 5),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                "assest/images/coffee4.png",
                                fit: BoxFit.fill,
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: const [
                                    Text(
                                      "كوفي",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.only(right: 20),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: const [
                                    Text(
                                      " #102",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                    Text(
                                      "٧ ريال",
                                      style: TextStyle(fontSize: 15),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "9:00 PM       18/7",
                style: TextStyle(fontSize: 18),
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
                child: ListView.builder(
                  itemCount: 3,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      width: size.width / 2.4,
                      margin: EdgeInsets.symmetric(
                          vertical: size.width / 18, horizontal: 5),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              "assest/images/coffee4.png",
                              fit: BoxFit.fill,
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: const [
                                  Text(
                                    "كوفي",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(right: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    " #102",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  Text(
                                    "٧ ريال",
                                    style: TextStyle(fontSize: 15),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
