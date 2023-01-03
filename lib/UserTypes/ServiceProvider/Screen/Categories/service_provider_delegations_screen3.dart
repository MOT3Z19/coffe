import 'dart:ui';

import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Categories/statistics.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/my_account.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/side_drawer.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/sp_about_us.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/sp_app_setting.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/MyAccount/page/sp_contact_us.dart';
import 'package:coffee_station/UserTypes/ServiceProvider/Screen/Users/page/service_provider_add_user1.dart';
// import 'package:coffee_station/UserTypes/User/screen/HomePage/page/side_drawar.dart';
import 'package:coffee_station/core/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ServiceProviderDelegationsScreen3 extends StatefulWidget {
  const ServiceProviderDelegationsScreen3({Key? key}) : super(key: key);

  @override
  _ServiceProviderDelegationsScreen3State createState() =>
      _ServiceProviderDelegationsScreen3State();
}

class _ServiceProviderDelegationsScreen3State
    extends State<ServiceProviderDelegationsScreen3> {
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
        backgroundColor: primaryColor,
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: SizedBox(
              width: size.width,
              height: size.height,
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                        top: size.height / 4.4,
                        left: size.height / 55,
                        right: size.height / 55),
                    height: size.height / 1.3,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MyAccount(),
                              ),
                            );
                          },
                          child: Item(context, " حسابي"),
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
                          child: Item(context, " الاحصائيات"),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderAboutUS(),
                              ),
                            );
                          },
                          child: Item(context, " من نحن"),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog1();
                          },
                          child: Item(context, "  إضافة حسابات مستخدمين"),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ServiceProviderContactUs(),
                              ),
                            );
                          },
                          child: Item(context, " اتصل بنا"),
                        ),
                        Item(context, "تغيير اللغة"),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ServiceProviderAppSettings(),
                                ),
                              );
                            },
                            child: Item(context, "اعدادات التطبيق")),
                        InkWell(
                            onTap: () {
                              showDialog2();
                            },
                            child: Item(context, " الشكوى")),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Center(
                            child: Container(
                              width: size.width / 4,
                              height: size.height / 10,
                              decoration: const ShapeDecoration(
                                  shape: CircleBorder(), color: Colors.white),
                              child: const DecoratedBox(
                                decoration: ShapeDecoration(
                                    shape: CircleBorder(),
                                    image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage(
                                            "assest/images/man.jpg"))),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: size.width / 3.9,
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
                          SizedBox(
                            width: size.width / 20,
                          ),
                        ],
                      ),
                      const Text(
                        "احمد محمود",
                        style: TextStyle(color: Colors.white, fontSize: 17),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 135),
                        child: Center(
                          child: Row(
                            children: [
                              const Text(
                                "شارع خالد بن الوليد",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                              Icon(
                                Icons.location_on_rounded,
                                size: 15,
                                color: locationColor,
                              )
                            ],
                          ),
                        ),
                      ),
                      const Text(
                        " السعودية، جدة",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    ],
                  )
                ],
              ),
            ),
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
                  "المستخدمين",
                  style: TextStyle(fontSize: 25),
                )),
              ],
            ),
            actions: <Widget>[
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "لا يوجد مستخدمين",
                  style: TextStyle(fontSize: 20),
                ),
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
                child: Container(
                  width: size.width / 1.1,
                  height: size.height / 13,
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
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

  Widget Item(BuildContext context, String title) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height / 15,
      margin: const EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.arrow_back_ios),
          Text(
            "  $title",
            style: const TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.right,
          ),
        ],
      ),
    );
  }
}
