import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/statistics.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/statistics3.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Statistics2 extends StatefulWidget {
  const Statistics2({Key? key}) : super(key: key);

  @override
  _Statistics2State createState() => _Statistics2State();
}

class _Statistics2State extends State<Statistics2> {
  String? selectedValue;
  List<String> items = [
    'احمد محمود',
  ];
  String? selectedValue2;
  List<String> items2 = [
    ' عددية',
    ' حسابية',
  ];
  String? selectedValue3;
  List<String> items3 = [
    ' كل الافرع',
    ' الشمالية',
    ' الجنوبية',
    ' الشرقية',
    ' الغربية',
    ' الوسطى',
  ];
  String? selectedValue4;
  List<String> items4 = [
    '  القهاوي',
    ' التمور',
    ' الحلويات',
    ' المكسرات',
  ];
  String? selectedValue5;
  List<String> items5 = [
    '  القهاوي',
    ' التمور',
    ' الحلويات',
    ' المكسرات',
  ];
  String? selectedValue6;
  List<String> items6 = [
    ' اسبانيش لاتيه',
    '  فهوة عربية',
    ' فهوة تركية',
  ];
  String? selectedValue7;
  List<String> items7 = [
    'احمد محمود',
    'خليل محمود',
    'علي محمود',
  ];
  String? selectedValue8;
  List<String> items8 = [
    ' ٢٠ - ٣٠ ',
    '٣٠-٤٠',
    '٤٠-٥٠ ',
  ];
  String? selectedValue9;
  List<String> items9 = [
    ' السعودية ',
    ' سورية ',
    ' لينان ',
  ];

  String? selectedValue10;
  List<String> items10 = [
    ' الطايف ',
    ' الرياض ',
    ' جدة ',
  ];
  String? selectedValue11;
  List<String> items11 = [
    ' حي الرمال ',
    ' حي الشمال ',
  ];

  String? selectedValue12;
  List<String> items12 = [
    ' عن طريق المتجر ',
    ' عن طريق المندوب ',
    ' في المتجر ',
  ];

  String? selectedValue13;
  List<String> items13 = [
    '  فئة اولى',
    '  فئة تانية',
  ];
  String? selectedValue14;
  List<String> items14 = [
    '  محمد ',
    'علي',
  ];
  String? selectedValue15;
  List<String> items15 = [
    '  ٣/٤/٢٠٢٠ ',
    '٢/٧/٢٠٢٠',
  ];
  String? selectedValue16;
  List<String> items16 = [
    '  ٣/٦/٢٠٢٠ ',
    '٢/٩/٢٠٢٠',
  ];
  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();
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
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                          const Text(
                            "الاحصائيات ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
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
                  Container(
                    //margin: EdgeInsets.only(top: size.height / 6.5),
                    margin: EdgeInsets.only(
                        top: size.height / (6.5 - 1.5) - size.height / 19 / 2),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
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
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
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
                              "المندوبين",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                        Container(
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
                            color: brownColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "الاحصائيات",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Statistics3(),
                        ),
                      );
                    },
                    child: Text(
                      "كشف حساب",
                      style: TextStyle(
                        fontSize: 17,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Statistics2(),
                        ),
                      );
                    },
                    child: Text(
                      "التصفيات",
                      style: TextStyle(
                        fontSize: 17,
                        color: secondaryColor,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Statistics(),
                        ),
                      );
                    },
                    child: Text(
                      "الاحصائيات العامة",
                      style: TextStyle(
                        fontSize: 17,
                        // color: secondaryColor,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          ' تاجر : احمد محمود ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
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
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 2.2,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
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
              const SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'نوع التصفية ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
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
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 1.1,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 350,
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
              const SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          ' كل الافرع ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items3
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
                  value: selectedValue3,
                  onChanged: (value) {
                    setState(() {
                      selectedValue3 = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 25,
                  iconEnabledColor: Colors.black,
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 1.1,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 350,
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
              const SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          'كل الاصناف  ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items4
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
                  value: selectedValue4,
                  onChanged: (value) {
                    setState(() {
                      selectedValue4 = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 25,
                  iconEnabledColor: Colors.black,
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 1.1,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 350,
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
              const SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          ' كل الانواع ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items5
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
                  value: selectedValue5,
                  onChanged: (value) {
                    setState(() {
                      selectedValue5 = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 25,
                  iconEnabledColor: Colors.black,
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 1.1,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 350,
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
              const SizedBox(
                height: 10,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      SizedBox(
                        width: 4,
                      ),
                      Expanded(
                        child: Text(
                          ' كل اسماء المنتجات ',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          // overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  items: items6
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
                  value: selectedValue6,
                  onChanged: (value) {
                    setState(() {
                      selectedValue6 = value as String;
                    });
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_down_outlined,
                  ),
                  iconSize: 25,
                  iconEnabledColor: Colors.black,
                  buttonHeight: size.height / 25,
                  buttonWidth: size.width / 1.1,
                  buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                  buttonDecoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    // border: Border.all(
                    //   color: Colors.black26,
                    // ),
                    //
                    //
                    color: Colors.white,
                  ),
                  buttonElevation: 2,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  dropdownMaxHeight: 200,
                  dropdownWidth: 350,
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
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' الفئة العمرية ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items8
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
                      value: selectedValue8,
                      onChanged: (value) {
                        setState(() {
                          selectedValue8 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 2.3,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' اسم العميل ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items7
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
                      value: selectedValue7,
                      onChanged: (value) {
                        setState(() {
                          selectedValue7 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 2.3,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
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
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' الحي ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items11
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
                      value: selectedValue11,
                      onChanged: (value) {
                        setState(() {
                          selectedValue11 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 100,
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' المدينة ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items10
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
                      value: selectedValue10,
                      onChanged: (value) {
                        setState(() {
                          selectedValue10 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 100,
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' البلد ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items9
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
                      value: selectedValue9,
                      onChanged: (value) {
                        setState(() {
                          selectedValue9 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 100,
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
                ],
              ),

              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              '  المندوب ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items14
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
                      value: selectedValue14,
                      onChanged: (value) {
                        setState(() {
                          selectedValue14 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 100,
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' فئة التوصيل ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items13
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
                      value: selectedValue13,
                      onChanged: (value) {
                        setState(() {
                          selectedValue13 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 100,
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
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'نوع التوصيل ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items12
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
                      value: selectedValue12,
                      onChanged: (value) {
                        setState(() {
                          selectedValue12 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 3.2,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
                      buttonElevation: 2,
                      itemHeight: 40,
                      itemPadding: const EdgeInsets.only(left: 14, right: 14),
                      dropdownMaxHeight: 200,
                      dropdownWidth: 170,
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
                ],
              ),

              ////
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              ' التاريخ التاني ',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items16
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
                      value: selectedValue16,
                      onChanged: (value) {
                        setState(() {
                          selectedValue16 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 2.5,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
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
                  const Text(
                    " الى",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          SizedBox(
                            width: 4,
                          ),
                          Expanded(
                            child: Text(
                              'التاريخ الاول',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              // overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                      items: items15
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
                      value: selectedValue15,
                      onChanged: (value) {
                        setState(() {
                          selectedValue15 = value as String;
                        });
                      },
                      icon: const Icon(
                        Icons.keyboard_arrow_down_outlined,
                      ),
                      iconSize: 25,
                      iconEnabledColor: Colors.black,
                      buttonHeight: size.height / 24,
                      buttonWidth: size.width / 2.5,
                      buttonPadding: const EdgeInsets.only(left: 14, right: 14),
                      buttonDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(14),
                        // border: Border.all(
                        //   color: Colors.black26,
                        // ),
                        //
                        //
                        color: Colors.white,
                      ),
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
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      showDialog2();
                    },
                    child: Container(
                      width: size.width / 2.2,
                      height: size.height / 15,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 50,
                          vertical: size.height / 22),
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "بحث جديد",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      showDialog3();
                    },
                    child: Container(
                      width: size.width / 2.2,
                      height: size.height / 15,
                      margin: EdgeInsets.symmetric(
                          horizontal: size.width / 50,
                          vertical: size.height / 22),
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      child: const Center(
                        child: Text(
                          "ابحث",
                          style: TextStyle(color: Colors.white, fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              )
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
                const Center(
                    child: Text(
                  "تفصيل التجار",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
              ],
            ),
            content: SingleChildScrollView(
              child: Container(
                width: double.maxFinite,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Center(
                        child: Text(
                      " فرع زارا",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    const Center(
                        child: Text(
                      " ٢١ اكتوبر - ٣٠ ديسمبر",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Center(
                            child: Text(
                          " عدد العملاء",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        Center(
                            child: Text(
                          " عدد الانواع",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        Center(
                            child: Text(
                          " عدد الاصناف",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        Center(
                            child: Text(
                          " عدد المندوبين",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                      ],
                    ),
                    const Divider(
                      thickness: 1,
                    ),
                    // butons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: size.width / 5,
                            height: size.height / 16,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 40),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "رجوع",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: size.width / 5,
                            height: size.height / 16,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 40),
                            decoration: BoxDecoration(
                              color: brownColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "طباعة",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            width: size.width / 5,
                            height: size.height / 16,
                            margin: const EdgeInsets.symmetric(
                                horizontal: 10, vertical: 40),
                            decoration: const BoxDecoration(
                              color: Colors.black,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: const Center(
                              child: Text(
                                "تصدير",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
//             actions: <Widget>[
//               Container(
//                 width: double.maxFinite,
//                 child: SingleChildScrollView(
//                   child: Column(
//                     children: [
//                       const Center(
//                           child: Text(
//                         " فرع زارا",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                       const Center(
//                           child: Text(
//                         " ٢١ اكتوبر - ٣٠ ديسمبر",
//                         style: TextStyle(fontWeight: FontWeight.bold),
//                       )),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Center(
//                               child: Text(
//                             " عدد العملاء",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           )),
//                           Center(
//                               child: Text(
//                             " عدد الانواع",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           )),
//                           Center(
//                               child: Text(
//                             " عدد الاصناف",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           )),
//                           Center(
//                               child: Text(
//                             " عدد المندوبين",
//                             style: TextStyle(fontWeight: FontWeight.bold),
//                           )),
//                         ],
//                       ),
//                       const Divider(
//                         thickness: 1,
//                       ),
//                       //
//
//                       //
//                       ListView.builder(
//                           shrinkWrap: true,
//                           // itemCount: 20,
//                           scrollDirection: Axis.vertical,
//                           itemBuilder: (BuildContext context, int index) {
//                             return Container(
//                               // height: 500,
//                               // width: 300,
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceAround,
//                                     children: const [
//                                       Text(
//                                         "  ٥٠ عميل",
//                                         // style: TextStyle(fontWeight: FontWeight.bold),
//                                       ),
//                                       Text(
//                                         " ٥٠ نوع ",
//                                         //style: TextStyle(fontWeight: FontWeight.bold),
//                                       ),
//                                       Text(
//                                         " ٥٠ صنف ",
//                                         // style: TextStyle(fontWeight: FontWeight.bold),
//                                       ),
//                                       Text(
//                                         " ٥٠ مندوب ",
//                                         // style: TextStyle(fontWeight: FontWeight.bold),
//                                       ),
//                                     ],
//                                   ),
//                                   const SizedBox(
//                                     height: 10,
//                                   ),
//                                 ],
//                               ),
//                             );
//                           }),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             //    style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //   style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //    style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: const [
//                           Text(
//                             "  ٥٠ عميل",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ نوع ",
//                             //  style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ صنف ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                           Text(
//                             " ٥٠ مندوب ",
//                             // style: TextStyle(fontWeight: FontWeight.bold),
//                           ),
//                         ],
//                       ),
// ////butons
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceAround,
//                         children: [
//                           InkWell(
//                             onTap: () {},
//                             child: Container(
//                               width: size.width / 5,
//                               height: size.height / 16,
//                               margin: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 40),
//                               decoration: BoxDecoration(
//                                 color: primaryColor,
//                                 borderRadius:
//                                     const BorderRadius.all(Radius.circular(10)),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   "رجوع",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           InkWell(
//                             onTap: () {},
//                             child: Container(
//                               width: size.width / 5,
//                               height: size.height / 16,
//                               margin: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 40),
//                               decoration: BoxDecoration(
//                                 color: brownColor,
//                                 borderRadius:
//                                     const BorderRadius.all(Radius.circular(10)),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   "طباعة",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           InkWell(
//                             onTap: () {},
//                             child: Container(
//                               width: size.width / 5,
//                               height: size.height / 16,
//                               margin: const EdgeInsets.symmetric(
//                                   horizontal: 10, vertical: 40),
//                               decoration: const BoxDecoration(
//                                 color: Colors.black,
//                                 borderRadius:
//                                     BorderRadius.all(Radius.circular(10)),
//                               ),
//                               child: const Center(
//                                 child: Text(
//                                   "تصدير",
//                                   style: TextStyle(
//                                       color: Colors.white, fontSize: 18),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ],
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//             ],
          );
        });
  }

  showDialog3() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return SingleChildScrollView(
            child: AlertDialog(
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
                  const Center(
                      child: Text(
                    "تفصيل التجار",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              content: Column(
                children: [
                  const Center(
                      child: Text(
                    " فرع زارا",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  const Center(
                      child: Text(
                    " ٢١ اكتوبر - ٣٠ ديسمبر",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.navigate_before),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                          child: Text(
                        " عدد العملاء",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد الانواع",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد الاصناف",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد المندوبين",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  setupAlertDialoadContainer(context),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "رجوع",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: BoxDecoration(
                            color: brownColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "طباعة",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "تصدير",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }

  Widget setupAlertDialoadContainer(BuildContext context) {
    return Container(
      height: 600.0, // Change as per your requirement
      width: 600.0, // Change as per your requirement
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  Text(
                    "  ٥٠ عميل",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ٥٠ نوع ",
                    //style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ٥٠ صنف ",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    " ٥٠ مندوب ",
                    // style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          );
        },
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
                  const Center(
                      child: Text(
                    "تفصيل الافرع",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                ],
              ),
              content: Column(
                children: [
                  const Center(
                      child: Text(
                    " فرع زارا",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  const Center(
                      child: Text(
                    " ٢١ اكتوبر - ٣٠ ديسمبر",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.navigate_before),
                      Icon(Icons.navigate_next),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Center(
                          child: Text(
                        " عدد العملاء",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد الانواع",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد الاصناف",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                      Center(
                          child: Text(
                        " عدد المندوبين",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                      )),
                    ],
                  ),
                  const Divider(
                    thickness: 1,
                  ),
                  setupAlertDialoadContainer(context),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "رجوع",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: BoxDecoration(
                            color: brownColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "طباعة",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Container(
                          width: size.width / 5.5,
                          height: size.height / 17,
                          margin: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 40),
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: const Center(
                            child: Text(
                              "تصدير",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
