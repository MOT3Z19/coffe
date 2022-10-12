import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/service_provider_delegations_screen3.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
// import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Users/page/service_provider_add_user2.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ServiceProviderAddUser1 extends StatefulWidget {
  const ServiceProviderAddUser1({Key? key}) : super(key: key);

  @override
  _ServiceProviderAddUser1State createState() =>
      _ServiceProviderAddUser1State();
}

class _ServiceProviderAddUser1State extends State<ServiceProviderAddUser1> {
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  String? selectedValue2;
  List<String> items2 = [
    ' محاسب',
    ' مدير فرع',
    ' مدير متجر',
  ];
  String? selectedValue3;
  List<String> items3 = [
    ' الشمالية',
    ' الغربية',
    ' الجنوبية',
    ' الشرقية',
    ' الوسطى',
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
                                      const ServiceProviderDelegationsScreen3(),
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
                              "اضافة/تعديل مستخدم  ",
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
                          '  نوع المستخدم ',
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
                  buttonHeight: 50,
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
                          ' الفرع ',
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
                  buttonHeight: 50,
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
              Container(
                margin: const EdgeInsets.only(right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " الايميل  ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " الاسم الكامل ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " اسم المستخدم ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),

              //
              Container(
                margin: const EdgeInsets.only(right: 30, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Text(
                      " ناريخ انتهاء الصلاحية  ",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 20,
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.grey),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ServiceProviderAddUser2(),
                    ),
                  );
                },
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin: EdgeInsets.symmetric(
                      horizontal: size.width / 18, vertical: size.height / 30),
                  decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: const Center(
                    child: Text(
                      "اضف",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
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
