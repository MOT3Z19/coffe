import 'package:coffee_station/core/constant.dart';
import 'package:flutter/material.dart';

import '../admin_side_drawer.dart';

class AdminBunchScreen extends StatefulWidget {
  const AdminBunchScreen({Key? key}) : super(key: key);

  @override
  _AdminBunchScreenState createState() => _AdminBunchScreenState();
}

class _AdminBunchScreenState extends State<AdminBunchScreen> {
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
                          InkWell(
                            onTap: () {
                              Navigator.pop(
                                context,
                              );
                            },
                            child: const Icon(
                              Icons.keyboard_arrow_left_rounded,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          const Center(
                            child: Text(
                              "باقات المندوبين ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
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
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width / 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "   تجار ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    const Text(
                      " مندوبين ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    Text(
                      "  مستخدمين  ",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: secondaryColor,
                        // decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        showDialog1();
                      },
                      child: Text(
                        "اضف باقة جديدة",
                        style: TextStyle(fontSize: 15, color: secondaryColor),
                      ),
                    ),
                  ],
                ),
              ),
              const Center(
                  child: Text(
                " باقات الاشتراك",
                style: TextStyle(fontSize: 20),
              )),
              const SizedBox(
                height: 30,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
              const SizedBox(
                height: 20,
              ),
              Box(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget Box(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width / 1.2,
      height: size.height / 15,
      decoration: BoxDecoration(
        color: greyColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "تعديل",
            style: TextStyle(fontSize: 15, color: secondaryColor),
          ),
          const Text(
            "باقة ١٠٠ ريال ٢٥ منتج لليوم الواحد",
            style: TextStyle(fontSize: 15),
          )
        ],
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
                const Center(child: Text("ادخل باقة جديدة")),
              ],
            ),
            actions: <Widget>[
              Container(
                width: size.width,
                height: size.height / 19,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20, vertical: size.height / 65),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: " الرقم  ",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 19,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20, vertical: size.height / 65),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: " الاسم  ",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 19,
                margin: EdgeInsets.symmetric(
                    horizontal: size.width / 20, vertical: size.height / 65),
                child: const TextField(
                  decoration: InputDecoration(
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.grey),
                      ),
                      hintText: " القيمة  ",
                      hintStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Container(
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
                      "تاكيد",
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                ),
              ),
            ],
          );
        });
  }
}
