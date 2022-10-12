import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Users/page/service_provider_add_user1.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ServiceProviderAddUser2 extends StatefulWidget {
  const ServiceProviderAddUser2({Key? key}) : super(key: key);

  @override
  _ServiceProviderAddUser2State createState() =>
      _ServiceProviderAddUser2State();
}

class _ServiceProviderAddUser2State extends State<ServiceProviderAddUser2> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  String? selectedValue;
  List<String> items = [
    ' محاسب',
    ' مدير فرع',
    ' مدير متجر',
  ];
  String? selectedValue2;
  List<String> items2 = [
    ' الشمالية',
    ' الغربية',
    ' الجنوبية',
    ' الشرقية',
    ' الوسطى',
  ];
  String? selectedValue3;
  List<String> items3 = [
    'دائم',
    'مؤقت',
  ];
  String? selectedValue4;
  List<String> items4 = [
    '     ماجد اكرم /   فرع الشمالية',
  ];
  String? selectedValue5;
  List<String> items5 = [
    '     ماجد اكرم /   فرع الشمالية',
  ];
  String? selectedValue6;
  List<String> items6 = [
    '     ماجد اكرم /   فرع الشمالية',
  ];
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
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceProviderAddUser1(),
                                ),
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 40,
                            ),
                          ),
                          Center(
                            child: const Text(
                              "المستخدمين  ",
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
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      isExpanded: true,
                      hint: Row(
                        children: const [
                          // SizedBox(
                          //   width: 4,
                          // ),
                          Expanded(
                            child: Text(
                              ' المستخدم ',
                              style: TextStyle(
                                fontSize: 12,
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
                      buttonHeight: 50,
                      buttonWidth: size.width / 3.5,
                      buttonPadding: const EdgeInsets.only(left: 16, right: 16),
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
                      dropdownWidth: 140,
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
                          Center(
                            child: Text(
                              ' الفرع ',
                              style: TextStyle(
                                fontSize: 12,
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
                      buttonHeight: 50,
                      buttonWidth: size.width / 3.5,
                      buttonPadding: const EdgeInsets.only(left: 16, right: 16),
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
                      dropdownWidth: 140,
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
                          Expanded(
                            child: Text(
                              ' الحساب ',
                              style: TextStyle(
                                fontSize: 12,
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
                      buttonHeight: 50,
                      buttonWidth: size.width / 3.5,
                      buttonPadding: const EdgeInsets.only(left: 16, right: 16),
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
                      dropdownWidth: 140,
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
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServiceProviderAddUser1(),
                    ),
                  );
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Text(
                      "اضف",
                      style: TextStyle(color: secondaryColor, fontSize: 20),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 20,
                      color: secondaryColor,
                    )
                  ],
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          '  مدير متجر ',
                          style: TextStyle(
                            fontSize: 15,
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
                  buttonHeight: 50,
                  buttonWidth: size.width,
                  buttonPadding: const EdgeInsets.only(left: 16, right: 16),

                  // buttonElevation: 2,
                  // itemHeight: 40,
                  // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  // dropdownMaxHeight: 200,
                  // dropdownWidth: 140,
                  // dropdownPadding: null,
                  // dropdownDecoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(14),
                  //   // color: Colors.redAccent,
                  // ),
                  // dropdownElevation: 8,
                  // scrollbarRadius: const Radius.circular(40),
                  // scrollbarThickness: 5,
                  // scrollbarAlwaysShow: true,
                  // offset: const Offset(-20, 0),
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          '  مدير فرع ',
                          style: TextStyle(
                            fontSize: 15,
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
                  buttonHeight: 50,
                  buttonWidth: size.width,
                  buttonPadding: const EdgeInsets.only(left: 16, right: 16),

                  // buttonElevation: 2,
                  // itemHeight: 40,
                  // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  // dropdownMaxHeight: 200,
                  // dropdownWidth: 140,
                  // dropdownPadding: null,
                  // dropdownDecoration: BoxDecoration(
                  //   borderRadius: BorderRadius.circular(14),
                  //   // color: Colors.redAccent,
                  // ),
                  // dropdownElevation: 8,
                  // scrollbarRadius: const Radius.circular(40),
                  // scrollbarThickness: 5,
                  // scrollbarAlwaysShow: true,
                  // offset: const Offset(-20, 0),
                ),
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: Row(
                    children: const [
                      Expanded(
                        child: Text(
                          '   محاسب ',
                          style: TextStyle(
                            fontSize: 15,
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
                  buttonHeight: 50,
                  buttonWidth: size.width,
                  buttonPadding: const EdgeInsets.only(left: 16, right: 16),

                  // buttonElevation: 2,
                  // itemHeight: 40,
                  // itemPadding: const EdgeInsets.only(left: 14, right: 14),
                  // dropdownMaxHeight: 200,
                  // dropdownWidth: 140,
                  // dropdownPadding: null,
                  // // dropdownDecoration: BoxDecoration(
                  // //   borderRadius: BorderRadius.circular(14),
                  // //   // color: Colors.redAccent,
                  // // ),
                  // dropdownElevation: 8,
                  // scrollbarRadius: const Radius.circular(40),
                  // scrollbarThickness: 5,
                  // scrollbarAlwaysShow: true,
                  // offset: const Offset(-20, 0),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
