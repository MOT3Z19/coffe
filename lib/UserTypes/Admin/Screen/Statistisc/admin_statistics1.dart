import 'package:coffee_station/core/constant.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../admin_side_drawer.dart';
import '../delegation-page.dart';
import '../serivce_provider_page.dart';
import 'admin_statistisc3.dart';
import 'delivery_statistisc4.dart';

class AdminStatistics1 extends StatefulWidget {
  const AdminStatistics1({Key? key}) : super(key: key);

  @override
  _AdminStatistics1State createState() => _AdminStatistics1State();
}

class _AdminStatistics1State extends State<AdminStatistics1> {
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
          child: AdminSideDrawer(),
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
                      margin: EdgeInsets.symmetric(horizontal: size.width / 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 40,
                          ),
                          const Text(
                            "الاحصائيات  ",
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
                    margin: EdgeInsets.only(top: size.height / 6.5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const DelegationPagee(),
                              ),
                            );
                          },
                          child: Container(
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
                                "المندوبين",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
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
                                    const ServiceProviderPage(),
                              ),
                            );
                          },
                          child: Container(
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
                                "مزودي الخدمة",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 20),
                              ),
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
                          builder: (context) => const AdminStatistics4(),
                        ),
                      );
                    },
                    child: const Text(
                      "كشف حساب",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AdminStatistics3(),
                        ),
                      );
                    },
                    child: const Text(
                      "التصفيات",
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  Text(
                    "الاحصائيات العامة",
                    style: TextStyle(
                      fontSize: 17,
                      color: secondaryColor,
                      //  decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      " الاحصاء التعدادي",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " القيمة",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                    Text(
                      " التفصيل",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                ),
              ),
              Item2(context, "  اجمالي عدد التجار"),
              Item2(context, "  اجمالي عدد المندوبين"),
              Item2(context, "  اجمالي افرع المتجر"),
              Item2(context, "  اجمالي الاصناف"),
              Item2(context, "  اجمالي الارباح"),
              Item2(context, "  اجمالي العملاء"),
              Item2(context, "  اجمالي البدان"),
              Item2(context, "  اجمالي المدن"),
              Item2(context, "  اجمالي الاحياء"),
              const Divider(
                // color: Colors.black,
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width / 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      " الاحصاء الحسابي",
                      style: TextStyle(fontSize: 17, color: Colors.blue),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 13, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      " القيمة",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                    Text(
                      " التفصيل",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: secondaryColor),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: const DottedLine(dashLength: 20)),
              Item2(context, " اجمالي المبيعات"),
              Item2(context, " اجمالي عدد المندوبين"),
              Item2(context, " اجمالي حصة الموقع"),
              Item2(context, " اجمالي المحصل من الموقع"),
              Item2(context, " اجمالي المسدد من الموقع"),
              Item2(context, " رصيد المندوب"),
            ],
          ),
        ),
      ),
    );
  }

  Widget Item2(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(horizontal: size.width / 13, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            " ٦٠",
            style: TextStyle(fontSize: 17),
          ),
          Text(
            "$title",
            style: const TextStyle(fontSize: 17),
          ),
        ],
      ),
    );
  }
}
