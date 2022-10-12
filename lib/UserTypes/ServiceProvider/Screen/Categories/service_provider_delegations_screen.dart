import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/service_provider_delegations_screen2.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';

class ServiceProviderDelegationsScreen extends StatefulWidget {
  const ServiceProviderDelegationsScreen({Key? key}) : super(key: key);

  @override
  _ServiceProviderDelegationsScreenState createState() =>
      _ServiceProviderDelegationsScreenState();
}

class _ServiceProviderDelegationsScreenState
    extends State<ServiceProviderDelegationsScreen> {
  String? selectedValue;
  List<String> items = [
    'شهرين',
    'ثلاث شهور',
    'اربع شهور',
  ];
  String? selectedValue2;
  List<String> items2 = [
    'Chevrolet',
    'Audi',
    'Ferrari',
    'BMW',
    'Ford',
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
                            size: 30,
                          ),
                          const Text(
                            "المندوبين ",
                            style: TextStyle(color: Colors.white, fontSize: 20),
                          ),
                          InkWell(
                            onTap: () {
                              _key.currentState!.openDrawer();
                            },
                            child: const Icon(
                              Icons.view_headline,
                              color: Colors.white,
                              size: 30,
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
                            color: brownColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "المندوبين",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
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
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Center(
                            child: Text(
                              "الاحصائيات",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                width: size.width / 1.3,
                height: size.height / 18,
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
                  color: boxColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: const EdgeInsets.only(top: 30),
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      size: 20,
                    ),
                    label: Text("ابحث هنا"),
                  ),
                ),
              ),
              const SizedBox(
                height: 80,
              ),
              const Center(
                  child: Text(
                "لا يوجد اي مندوب مضاف",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              )),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  showDialog1();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                        child: Text(
                      "اضف مندوب جديد",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: secondaryColor,
                      ),
                    )),
                    const SizedBox(
                      width: 30,
                    ),
                    Icon(
                      Icons.add_circle_outline,
                      size: 30,
                      color: secondaryColor,
                    )
                  ],
                ),
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
                          child: Icon(Icons.arrow_back)),
                    ],
                  ),
                  const Center(
                      child: Text(
                    "اضف مندوب جديد",
                    style: TextStyle(fontSize: 25),
                  )),
                ],
              ),
              //content: Text("body"),
              actions: <Widget>[
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width / 20,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                            ),
                            label: Text("اسم المندوب"),
                            labelStyle:
                                TextStyle(color: Colors.black, fontSize: 17)),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width / 20,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          label: Text("جنسية المندوب"),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                        horizontal: size.width / 20,
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                          ),
                          label: Text("عمر المندوب"),
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 1))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  '  اختر الصلاحية   ',
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
                          buttonWidth: size.width / 1.4,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          buttonElevation: 2,
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 380,
                          dropdownWidth: 280,
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
                    //
                    Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          border: Border(
                              bottom:
                                  BorderSide(color: Colors.grey, width: 1))),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          isExpanded: true,
                          hint: Row(
                            children: const [
                              Expanded(
                                child: Text(
                                  '  اختر السيارة ',
                                  style: TextStyle(
                                    fontSize: 14,
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
                          icon: Row(
                            children: [
                              const Icon(
                                Icons.add,
                              ),
                              const Icon(
                                Icons.search,
                              ),
                              const Icon(
                                Icons.keyboard_arrow_down_outlined,
                              ),
                            ],
                          ),
                          iconSize: 25,
                          iconEnabledColor: Colors.black,
                          buttonHeight: size.height / 20,
                          buttonWidth: size.width / 1.4,
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          buttonElevation: 2,
                          itemHeight: 40,
                          itemPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                          dropdownMaxHeight: 380,
                          dropdownWidth: 280,
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
                      margin: const EdgeInsets.symmetric(horizontal: 40),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(
                                  vertical: size.width / 30,
                                ),
                                child: const Center(
                                  child: Text(
                                    " صورة الهوية",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
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
                                    " الصورة الشخصية ",
                                    style: TextStyle(
                                        fontSize: 15, color: Colors.black),
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
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const ServiceProviderDelegationsScreen2(),
                          ),
                        );
                      },
                      child: Container(
                        width: size.width / 1.1,
                        height: size.height / 13,
                        margin: EdgeInsets.symmetric(
                            horizontal: size.width / 18,
                            vertical: size.height / 22),
                        decoration: BoxDecoration(
                          color: primaryColor,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: const Center(
                          child: Text(
                            "اضف",
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                      ),
                    ),
                    //
                  ],
                ),
              ],
            ),
          );
        });
  }
}
